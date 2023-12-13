class Question < ApplicationRecord
    has_many :results, dependent: :destroy
    has_many :choices, dependent: :destroy

    validates  :content, presence: true
    validates  :reason, presence: true

    scope :incorrect, -> { joins(:results).where(results: { result: false }) }

    def self.nutrition_data(user)
        nutrition_count = where(type: 'Nutrition').count
        nutrition_true_count = joins(:results).where(type: 'nutrition', results: { user_id: user.id, result: true }).count
        nutrition_false_count = joins(:results).where(type: 'nutrition', results: { user_id: user.id, result: false }).count
        not_answer_count = nutrition_count - (nutrition_true_count + nutrition_false_count)

        { "正解" => nutrition_true_count, "不正解" => nutrition_false_count, "未回答" => not_answer_count }
    end

    def self.compound_data(user)
        compound_count = where(type: 'Compound').count
        compound_true_count = joins(:results).where(type: 'compound', results: { user_id: user.id, result: true }).count
        compound_false_count = joins(:results).where(type: 'compound', results: { user_id: user.id, result: false }).count
        not_answer_count = compound_count - (compound_true_count + compound_false_count)

        { "正解" => compound_true_count, "不正解" => compound_false_count, "未回答" => not_answer_count }
    end

    # 残りの問題数の取得
    def self.nutrition_rest_count(user)
        rest_count = Result.nutrition_count(user)
        questions_count = Question.where(type: 'nutrition').count
        questions_count - rest_count
    end

    def self.compound_rest_count(user)
        rest_count = Result.compound_count(user)
        questions_count = Question.where(type: 'compound').count
        questions_count - rest_count
    end
end
