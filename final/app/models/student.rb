class Student < ApplicationRecord
  belongs_to :section, optional: true
  has_many :rosters
  has_many :teams, :through => :rosters
  has_many :team_labs, :through => :teams
  has_many :labs, :through => :team_labs
  has_many :evaluations, :through => :labs
  #validates :buckId
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  has_secure_password
end