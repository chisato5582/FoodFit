class Result < ApplicationRecord
    belongs_to :user
    belongs_to :question

    validates  :result, presence: true
end
