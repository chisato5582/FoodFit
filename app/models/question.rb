class Question < ApplicationRecord
    has_many :results, dependent: :destroy
    has_many :choices, dependent: :destroy

    validates  :content, presence: true
    validates  :reason, presence: true

    accepts_nested_attributes_for :choices, allow_destroy: true
end
