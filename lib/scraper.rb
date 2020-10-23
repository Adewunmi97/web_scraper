require 'httparty'
require 'nokogiri'

class Laptops
  attr_reader :names, :prices, :count, :conditions

  def initialize
    @url = 'https://www.ebay.com/sch/177/i.html?_from=R40&_nkw=laptops&rt=nc&Brand=HP&_dcat=177'
    @unparsed_page = HTTParty.get(@url)
    @parsed_page = Nokogiri::HTML(@unparsed_page)
    @count = 0
  end

  def scraping
    @names = @parsed_page.css('h3.s-item__title').map(&:text)

    @prices = @parsed_page.css('span.s-item__price').map(&:text)

    @conditions = @parsed_page.css('span.SECONDARY_INFO').map(&:text)

    @count = names.length
  end
end
