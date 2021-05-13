class Clarification < ApplicationRecord
  belongs_to :team
  belongs_to :question
  belongs_to :judge
end
