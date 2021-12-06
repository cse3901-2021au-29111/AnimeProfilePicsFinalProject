class Team < ApplicationRecord
  belongs_to :section, optional: true
  has_many :rosters
  has_many :students, :through => :rosters
end
