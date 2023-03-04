class FetchRainDataJob < ApplicationJob
  queue_as :default

  def perform
    time = Time.now
    weather = ENV["WEATHER_API_KEY"]

    #delete items from database older than 72 hours
    delete_time = time.to_i - 259200
    precip_list = RainTotal.where("hour < ?",  delete_time)
    precip_list.delete_all

    #fetch items and add to database
    TrailSystem.all.each do |trail_system|
        response =
          HTTParty.get(
            "http://api.weatherapi.com/v1/history.json?key=#{weather}&q=#{trail_system.lat},#{trail_system.long}&dt=#{time.year}/#{time.month}/#{time.day}",
          )
        response["forecast"]["forecastday"][0]["hour"].each do |hour|
          if hour <= time.to_i
            RainTotal.create(
              trail_system_id: trail_system.id,
              precipitation_last_hour: hour["precip_mm"],
              hour: hour["time_epoch"],
            )
          end
        end
    end
  end
end
