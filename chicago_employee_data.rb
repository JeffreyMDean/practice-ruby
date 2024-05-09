require "http"

employee_data = HTTP.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").parse

p chicago[0]["department"]