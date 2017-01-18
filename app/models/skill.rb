class Skill < ActiveRecord::Base
  belongs_to :effect
  belongs_to :skill_type
  belongs_to :user
end
