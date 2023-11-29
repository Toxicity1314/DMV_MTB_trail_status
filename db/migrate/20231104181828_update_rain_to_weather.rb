class UpdateRainToWeather < ActiveRecord::Migration[7.0]
  def up
    rename_table('rain_totals','weather_data')
    add_column(:weather_data, :soil_temp, :float)
  end
  
  def down
    remove_column(:weather_data, :soil_temp)
    rename_table('weather_data','rain_totals')
  end
end
