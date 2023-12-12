class Result < ApplicationRecord
    enum result: { failure: 0, success: 1 }

    belongs_to :user
    belongs_to :question

    validates  :result, presence: true
    validates :question_id, uniqueness: { scope: :user_id }

    # 与えられたユーザーのresultカラムがtrueのレコード数を取得
    def self.result_count(user)
        where(user_id: user.id, result: true).count
    end

    def self.nutrition_count
        Result.joins(:question).where(questions: { type: 'nutrition' }).count
    end

    def self.compound_count
        Result.joins(:question).where(questions: { type: 'compound' }).count
    end
end
