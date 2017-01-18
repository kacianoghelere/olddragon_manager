class Perk < ActiveRecord::Base
  belongs_to :perk_type
  belongs_to :user
end
