require 'terminal-table'

def generate_rows(items, prices, conditions)
  table = Terminal::Table.new do |t|
    items.each_with_index do |item, index|
      t.add_row [index + 1, item, prices[index], conditions[index]]
    end
    t.style = { all_separators: true }
  end
  table
end
