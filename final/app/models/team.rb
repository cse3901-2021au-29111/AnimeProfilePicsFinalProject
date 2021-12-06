class Team < ApplicationRecord
  belongs_to :section, optional: true
  has_many :rosters
  has_many :students, :through => :rosters
  has_many :team_labs
  has_many :labs, :through => :team_labs
end
