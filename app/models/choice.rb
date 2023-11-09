class Choice < ApplicationRecord
    belongs_to :question
    # belongs_to :result, through: :question
    
    validates  :choice, presence: true
    validates :correct, inclusion: [true, false]
end
