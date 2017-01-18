class CharacterClassItemType < ActiveRecord::Base
  belongs_to :character_class
  belongs_to :item_type
end
