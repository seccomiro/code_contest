class Contest < ApplicationRecord
  belongs_to :user
  has_many :judges
  has_many :questions
  has_many :teams
end
