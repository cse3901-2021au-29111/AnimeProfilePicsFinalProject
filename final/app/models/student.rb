class Student < ApplicationRecord
  has_many :teams,
           limit: 2,
           through: StudentTeamship
end
