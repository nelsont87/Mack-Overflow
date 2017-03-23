class Answer < ApplicationRecord
  validates_length_of :description, :minimum => 50
end
