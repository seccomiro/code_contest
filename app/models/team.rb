class Team < ApplicationRecord
  belongs_to :user
  has_many :submissions
  has_many :clarifications
end
