class Choice < ApplicationRecord
    enum correct: { correct: true, incorrect: false }

    belongs_to :question
    
    validates  :choice, presence: true
    validates  :correct, presence: true
end
