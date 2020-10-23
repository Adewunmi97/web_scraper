require_relative '../lib/scraper.rb'

describe Laptops do
  let(:card_info) { Laptops.new }

  it 'should return number of laptops found' do
    card_info.scraping
    expect(card_info.count).to be > 0
  end

  it 'should return each card informations' do
    card_info.scraping
    expect(card_info.names.length).to be > 0
  end

  it 'should return each laptops prices' do
    card_info.scraping
    expect(card_info.prices.length).to be > 0
  end

  it 'should return each card names with prices' do
    card_info.scraping
    expect(card_info.names.length).not_to eql(card_info.prices.length)
  end

  it 'should return card info as a class in laptops' do
    expect(card_info).to be_an_instance_of(Laptops)
  end
end
