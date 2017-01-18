class CharacterRacePerk < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :perk
end
