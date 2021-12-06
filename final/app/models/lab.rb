class Lab < ApplicationRecord
  has_many :evaluations
  has_many :team_labs
  has_many :teams, :through => :team_labs
end
