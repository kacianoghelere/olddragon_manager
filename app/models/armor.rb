class Armor < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :armor_type
  belongs_to :origin
  belongs_to :user
end
