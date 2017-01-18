class CharacterRaceLanguage < ActiveRecord::Base
  belongs_to :character_race
  belongs_to :language_type
end
