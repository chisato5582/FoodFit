class Result < ApplicationRecord
    enum result: { failure: 0, success: 1 }

    belongs_to :user
    belongs_to :question

    validates  :result, presence: true
    validates :question_id, uniqueness: { scope: :user_id }

    # result がfalse かを判定するscope
    scope :incorrect, -> { where(result: false) }
end
