class Spell < ActiveRecord::Base
  belongs_to :effect
  belongs_to :element_type
  belongs_to :spell_circle
  belongs_to :user
end
