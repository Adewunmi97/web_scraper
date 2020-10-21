require 'httparty'
require 'nokogiri'

class Laptops
  attr_reader :names, :prices, :ratings, :count

  def initialize
    @url = 'https://www.jumia.com.ng/computing/hp/?q=hp+laptops'
    @unparsed_page = HTTParty.get(@url)
    @parsed_page = Nokogiri::HTML(@unparsed_page)
    @count = 0
  end

  def scraping
    @names = @parsed_page.css('h3.name').map(&:text)
    @prices = @parsed_page.css('div.prc').map(&:text)
    @ratings = @parsed_page.css('div.rev').map(&:text)
    @count = names.length
  end
end
