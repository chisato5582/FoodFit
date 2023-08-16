class Result < ApplicationRecord
    enum result: { failure: 0, success: 1 }

    belongs_to :user
    belongs_to :question

    validates  :result, presence: true
end
