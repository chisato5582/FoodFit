class Choice < ApplicationRecord
  belongs_to :question

  validates  :choice, presence: true
  validates :correct, inclusion: [true, false]
end
