class Question < ApplicationRecord
  belongs_to :contest
  has_many :submissions
  has_many :clarifications
end
