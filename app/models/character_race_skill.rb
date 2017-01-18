class CharacterRaceSkill < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :skill
end
