class CharacterClassArmorType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :armor_type
end
