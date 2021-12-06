class TeamLab < ApplicationRecord
  belongs_to :team
  belongs_to :lab
  validates_uniqueness_of :lab_id, :scope => [:team_id]
end
