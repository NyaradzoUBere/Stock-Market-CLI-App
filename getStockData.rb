require_relative './environment'
require 'rest-client'
require 'json'

base_url = "https://www.alphavantage.co/query?function=TIME_SERIES_DAILY&symbol=#{ticker}&outputsize=full&apikey=J4R3ZT9FISG3VH4Z"

data = RestClient.get(base_url)
full_data = JSON.parse(data)
daily_data = response["Time Series (Daily)"]
# Name error when getting to the formatted_date part of the CLI app
formatted_date = "#{year}-#{month}-#{day}"
stock_day_data = daily_data[formatted_date]
# Run tests for the below vvvvvvv
# stock_specific_data = stock_day_data["#{info_wanted}. #{stock_specific_info}"]









