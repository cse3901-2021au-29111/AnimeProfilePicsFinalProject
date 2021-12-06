class Roster < ApplicationRecord
  belongs_to :student
  belongs_to :team
  validates_uniqueness_of :student_id, :scope => [:team_id]
end
