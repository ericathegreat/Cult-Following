require 'squib'

#relics
Squib::Deck.new(cards: 5, layout: 'layout.yml', width: 825, height: 1125) do
	data = csv file: 'relics.csv'

  png file: data['Border'].map {|a| "art/cult_following_relics_#{a}.png" }
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'relic_image'
  text str: data['Title'], layout: 'relic_title'
  save prefix: 'relic', format: :png
  save_sheet  prefix: 'group_relic_', columns: 4, rows: 2
end

#people
Squib::Deck.new(cards: 10, layout: 'layout.yml', width: 825, height: 1125) do
	data = csv file: 'people.csv'

  png file: 'art/people_back.png'
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'person_image'
  png file: data['Passion1'].map {|a| "art/icon_#{a}.png" }, layout: 'person_passion1'
  png file: data['Fear1'].map {|a| "art/icon_#{a}.png" }, layout: 'person_fear1'
  text str: data['Score'], layout: 'person_score'
  text str: data['Name'], layout: 'person_name'
  save prefix: 'person', format: :png
  save_sheet  prefix: 'group_people_', columns: 4, rows: 2
end
