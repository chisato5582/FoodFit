class Question < ApplicationRecord
    has_many :results, dependent: :destroy
    has_many :choices, dependent: :destroy

    validates  :content, presence: true
    validates  :reason, presence: true

    scope :incorrect, -> { joins(:results).where(results: { result: false }) }

end
