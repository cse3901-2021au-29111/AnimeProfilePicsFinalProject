class Team < ApplicationRecord
  belongs_to :section
  has_many :rosters
  has_many :students, :through => :rosters
end
