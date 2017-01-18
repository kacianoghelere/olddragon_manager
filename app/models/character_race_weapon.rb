class CharacterRaceWeapon < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :weapon_type
end
