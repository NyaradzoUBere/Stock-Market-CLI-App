require_relative './getStockData.rb'
require 'pry'


# Find what it's called when you get drawings using special characters

puts "Hello user! What's your name?"
name = gets.chomp

puts "Hi #{name}! What stock would you like to see? Please input the stock ticker. For example: FitBit's ticker is FIT"
ticker = gets.chomp

puts "Please note, you can only review information on stock for the last year and for business days"

puts "For what year? (4-Digit Format: 2020)"
year = gets.chomp

puts "For what month? (2-Digit Format: 07)"
month = gets.chomp

puts "For what day? (2-Digit Format: 02)"
day = gets.chomp

# NameError Here
binding.pry
puts "You want information for #{ticker} on #{formatted_date}, is that correct? y/n"
verification = gets.chomp

# Insert verificaiton to check if their stock date is for a business day. Include message to user if it is not.

if verification == y
    "Insert string here"
else
    "Sorry lets try again"
    # Find way to restart program
end

puts "What information would you like? Please select any of the options below (select number):
    1. Opening Price
    2. Daily High
    3. Daily Low
    4. Closing Price
    5. Daily volume"
info_wanted = gets.chomp

def stock_specific_info
    if info_wanted == 1
        # Code here
        puts "open"
    elsif info_wanted == 2
        # Code here
        puts "high"
    elsif info_wanted == 3
        puts "low"
    elsif info_wanted == 4
        puts "close"
    elsif info_wanted == 5
        "volume"
    else
        puts "You did not input a number 1-5. Here is all the information related to that stock"
        stock_day_data
    end
end

puts "Here is the information you requested"
# puts stock_specific_data