class Student < ApplicationRecord
  belongs_to :section
  has_many :rosters
  has_many :teams, :through => :rosters
end
