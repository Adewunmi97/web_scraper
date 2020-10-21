# !/usr/bin/env ruby

require_relative '../lib/scraper.rb'

card_info = Laptops.new
card_info.scraping

puts "----#{card_info.count} hp laptops found----"

count = 0
while count < card_info.count do
  if card_info.names[count].length > 0
    puts "#{count + 1}. #{card_info.names[count]} #{card_info.prices[count]}"
  end
  count += 1
end



