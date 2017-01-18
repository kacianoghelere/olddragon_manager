class CharacterRace < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :user
end
