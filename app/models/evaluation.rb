class Evaluation < ApplicationRecord
  belongs_to :submission
  belongs_to :judge
end
