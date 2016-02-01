require 'squib'

#relics
Squib::Deck.new(cards: 5, layout: 'layout.yml', width: 825, height: 1125) do
	data = csv file: 'relics.csv'

  png file: data['Border'].map {|a| "art/cult_following_relics_#{a}.png" }
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'relic_image'
  text str: data['Title'], layout: 'relic_title'
  save format: :png
  save_sheet  prefix: 'sample_xlsx_qty_', columns: 4, rows: 2
end
