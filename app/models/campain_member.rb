class CampainMember < ActiveRecord::Base
  belongs_to :campain
  belongs_to :character_sheet
end
