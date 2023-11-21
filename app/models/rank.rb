class Rank < ApplicationRecord
    has_many :users

    validates :rank_name, presence: true
    validates :response, presence: true
end
