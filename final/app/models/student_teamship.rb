class StudentTeamship < ApplicationRecord
  belongs_to :student
  belongs_to :team
end
