require_relative '../lib/helper.rb'

describe '#Helper' do
  it 'should generate item rows' do
    expect(generate_rows(['test'], [900], ['used'])).not_to eq(nil)
  end
end
