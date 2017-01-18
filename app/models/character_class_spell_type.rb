class CharacterClassSpellType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :spell_type
end
