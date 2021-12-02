class Section < ApplicationRecord
  has_many :teams
  has_many :students
end
