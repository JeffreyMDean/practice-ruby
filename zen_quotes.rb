require "http"

response = HTTP.get('https://zenquotes.io/api/random')
quote_data = response.parse

quote = quote_data[0]['q']
author = quote_data[0]['a']

puts "#{quote} - #{author}"