require 'squib'

data = Squib.csv file: './data/hero.csv'

Squib::Deck.new(cards: data['name'].size, layout: %w(hand.yml layouts/hero.yml))do
  background color: 'white'
  rect layout: 'cut'
  rect layout: 'safe'
  text str: data['name'], layout: 'Title'
  text str: data['description'], layout: 'Description'
  text str: data['attack'], layout: 'Attack'
  save_png prefix: 'hero_'
  save_pdf trim: 37.5
end
