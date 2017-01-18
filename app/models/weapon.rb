class Weapon < ActiveRecord::Base
  belongs_to :alignment
  belongs_to :dice
  belongs_to :material_type
  belongs_to :origin
  belongs_to :user
  belongs_to :weapon_type
end
