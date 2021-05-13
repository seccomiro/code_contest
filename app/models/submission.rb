class Submission < ApplicationRecord
  belongs_to :question
  belongs_to :team
end
