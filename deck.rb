require 'squib'

#relics
Squib::Deck.new(cards: 15, layout: 'relic-layout.yml', width: 825, height: 1125) do
	data = csv file: 'relics.csv'

  png file: data['Border'].map {|a| "art/cult_following_relics_#{a}.png" }
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'image'
  text str: data['Title'], layout: 'title'
  # save prefix: 'relic', format: :png
	save_sheet  prefix: 'group_relic_', columns: 4, rows: 2
  save_pdf file: 'relics.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

#focuses
Squib::Deck.new(cards: 30, layout: 'rite-layout.yml', width: 825, height: 1125) do
	data = csv file: 'focus.csv'
  background color: 'white'
	border_filename = data['Colour2'].map do |a| 
  	a == 'none' ? 'art/cult_following_ends_one_icon.png' : 'art/cult_following_ends_two_icons.png'
  end
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'image'
  png file: border_filename
  text str: data['Name'], layout: 'name_focus'
  png file: data['Colour1'].map {|a| "art/icon_#{a}.png" }, layout: 'icon1'
  png file: data['Colour2'].map {|a| "art/icon_#{a}.png" }, layout: 'icon2'
  # save prefix: 'focus', format: :png
	save_sheet  prefix: 'group_focus_', columns: 4, rows: 2
  save_pdf file: 'focuses.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
 
end

#rites
Squib::Deck.new(cards: 30, layout: 'rite-layout.yml', width: 825, height: 1125) do
	data = csv file: 'rite.csv'
  background color: 'white'
	border_filename = data['Colour2'].map do |a| 
  	a == 'none' ? 'art/cult_following_starts_one_icon.png' : 'art/cult_following_starts_two_icons.png'
  end
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'image'
  png file: border_filename
  text str: data['Name'], layout: 'name_rite'
  png file: data['Colour1'].map {|a| "art/icon_#{a}.png" }, layout: 'icon1'
  png file: data['Colour2'].map {|a| "art/icon_#{a}.png" }, layout: 'icon2'
  # save prefix: 'rite', format: :png
	save_sheet  prefix: 'group_rite_', columns: 4, rows: 2
  save_pdf file: 'rites.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

#people
Squib::Deck.new(cards: 29, layout: 'people-layout.yml', width: 825, height: 1125) do
	data = csv file: 'people.csv'
  background color: 'white'
  png file: 'art/people_back.png'
  png file: data['Image'].map {|a| "art/#{a}.png" }, layout: 'image'
  png file: data['Passion1'].map {|a| "art/icon_#{a}.png" }, layout: 'passion1'
  png file: data['Passion2'].map {|a| "art/icon_#{a}.png" }, layout: 'passion2'
  png file: data['Passion3'].map {|a| "art/icon_#{a}.png" }, layout: 'passion3'
  png file: data['Passion4'].map {|a| "art/icon_#{a}.png" }, layout: 'passion4'
  png file: data['Fear1'].map {|a| "art/icon_#{a}.png" }, layout: 'fear1'
  png file: data['Fear2'].map {|a| "art/icon_#{a}.png" }, layout: 'fear2'
  png file: data['Fear3'].map {|a| "art/icon_#{a}.png" }, layout: 'fear3'
  png file: data['Fear4'].map {|a| "art/icon_#{a}.png" }, layout: 'fear4'
  text str: data['Score'], layout: 'score'
  text str: data['Name'], layout: 'name'
  # save prefix: 'person', format: :png
  save_sheet  prefix: 'group_followers_', columns: 4, rows: 2
  save_pdf file: 'followers.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

#philosophies
Squib::Deck.new(cards: 16, layout: 'philosophy-layout.yml', width: 825, height: 1125) do
  data = csv file: 'philosophy.csv'

  background color: 'white'
  text str: data['Title'], layout: 'title'
  text str: data['Requirement'], layout: 'requirement'
  text str: data['Score'], layout: 'score'
  save_sheet  prefix: 'group_philosophy_', columns: 4, rows: 2
  save_pdf file: 'philosophies.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

#backs
Squib::Deck.new(cards: 8, layout: 'card-back.yml', width: 825, height: 1125) do
  png file: 'art/cult_following_backs.png'
  png file: 'art/cardback-follower.png', layout: 'image'
  save_sheet  prefix: 'back_follower', columns: 4, rows: 2
  save_pdf file: 'followers_back.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

Squib::Deck.new(cards: 8, layout: 'card-back.yml', width: 825, height: 1125) do
  png file: 'art/cult_following_backs.png'
  png file: 'art/cardback-ritual.png', layout: 'image'
  save_sheet  prefix: 'back_ritual', columns: 4, rows: 2
  save_pdf file: 'ritual_back.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end

Squib::Deck.new(cards: 8, layout: 'card-back.yml', width: 825, height: 1125) do
  png file: 'art/cult_following_backs.png'
  png file: 'art/cardback-philosophy.png', layout: 'image'
  save_sheet  prefix: 'back_philosophy', columns: 4, rows: 2
  save_pdf file: 'philosophy_back.pdf', width: cm(29.7), height: cm(21), margin: cm(0.5), gap: 29
end