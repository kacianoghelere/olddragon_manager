class CharacterRaceArmor < ActiveRecord::Base
  belongs_to :armor_type
  belongs_to :character_race
end
