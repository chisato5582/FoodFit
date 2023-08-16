class Choice < ApplicationRecord
    enum correct: { incorrect: 0, correct: 1 }

    belongs_to :question
    
    validates  :choice, presence: true
    validates  :correct, presence: true
end
