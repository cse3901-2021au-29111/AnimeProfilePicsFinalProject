class Student < ApplicationRecord
  belongs_to :section, optional: true
  has_many :rosters
  has_many :teams, :through => :rosters
  #validates :buckId
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true
  #has_secure_password
end