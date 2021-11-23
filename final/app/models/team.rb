class Team < ApplicationRecord
  belongs_to :school_class
  has_many :student,
          limit: 5, #max team size
           through: StudentTeamship
end
