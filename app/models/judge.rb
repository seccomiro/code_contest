class Judge < ApplicationRecord
  belongs_to :user
  belongs_to :contest
  has_many :evaluations
  has_many :clarifications
end
