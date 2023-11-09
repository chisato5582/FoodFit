class Result < ApplicationRecord
    enum result: { failure: 0, success: 1 }

    belongs_to :user
    belongs_to :question
    # has_many :choices, through: :questions

    validates  :result, presence: true
    validates :question_id, uniqueness: { scope: :user_id }
end
