class Student < ApplicationRecord
  belongs_to :section, optional: true
  has_many :rosters
  has_many :teams, :through => :rosters
end