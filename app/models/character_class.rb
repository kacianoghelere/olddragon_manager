class CharacterClass < ActiveRecord::Base
  belongs_to :dice
  belongs_to :perk
  belongs_to :character_class_type
  belongs_to :user
end
