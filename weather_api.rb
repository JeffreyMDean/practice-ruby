# Make a Ruby script to display the current forecast (temperature min/max, description, wind speed, etc.)  DELETE FILE BECAUSE OF API??

# Some features to add to your weather app:
# Display other weather data (min, max, humidity, etc)
# Ask the user for the name of a city to forecast
# Ask the user for preferred temperature units (Celcius or Farenheit)
# Write the app in a loop (once you show the forecast, the user can keep entering different cities until they choose to quit the program)

require "http"

weather = HTTP.get("https://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=fyweufy9237r29tyase").parse

w = weather
puts "What City do you live in?"
city = gets.chomp
puts "Do you prefer Celcius or Farenheit?"
preferred_units = gets.chomp
p w[temperature].min
p w["main"]["temp_max"]
p w["main"]["humidity"]

weather.each do |w|
  p w[:main]
  p "Enter another city: "
  city = gets.chomp

end