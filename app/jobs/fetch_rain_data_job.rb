class FetchRainDataJob < ApplicationJob
  queue_as :default

  def perform
    epoch_time = Time.now.to_i

    #delete items from database older than 72 hours
    delete_time = epoch_time - 259_200
    precip_list = RainTotal.where("hour < ?", delete_time)
    puts "deleting #{precip_list.count} pieces of rain data"
    precip_list.delete_all

    #fetch items and add to database
    TrailSystem.all.each do |trail_system|
      puts "getting #{trail_system.name}"

      response =
        HTTParty.get(
          "https://api.open-meteo.com/v1/forecast?latitude=#{trail_system.lat}&longitude=#{trail_system.long}&hourly=precipitation&precipitation_unit=inch&timeformat=unixtime&timezone=America%2FNew_York&past_days=2",
        )
      i = 0
      puts "updating #{response["hourly"]["time"].count} pieces of rain data"
      response["hourly"]["time"].each do |time|
        if time < epoch_time
          rain = RainTotal.find_by(trail_system_id: trail_system.id, hour: time)
          if rain
            rain.update(
              precipitation_last_hour: response["hourly"]["precipitation"][i],
            )
            # puts "updated #{rain}"
          else
            new_rain =
              RainTotal.create(
                trail_system_id: trail_system.id,
                precipitation_last_hour: response["hourly"]["precipitation"][i],
                hour: time,
              )
            if new_rain.valid?
              puts "#created = #{new_rain}"
            else
              puts "#{new_rain.errors.full_messages}"
            end
          end
          i += 1
        end
      end
    end
  end
end
