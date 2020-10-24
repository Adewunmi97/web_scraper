# !/usr/bin/env ruby

require_relative '../lib/scraper.rb'
require_relative '../lib/helper.rb'

card_info = Laptops.new
card_info.scraping

puts "----#{card_info.count} hp laptops found----"

table = generate_rows(card_info.names, card_info.prices, card_info.conditions)

puts table
