class CharacterClassWeaponType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :weapon_type
end
