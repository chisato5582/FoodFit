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

    # 回答した問題数の取得
    def self.nutrition_count(user)
        Result.joins(:question).where(questions: { type: 'nutrition' }).where(user_id: user.id).count
    end

    def self.compound_count(user)
        Result.joins(:question).where(questions: { type: 'compound' }).where(user_id: user.id).count
    end
end
