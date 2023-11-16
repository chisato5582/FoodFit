class Question < ApplicationRecord
    has_many :results, dependent: :destroy
    has_many :choices, dependent: :destroy

    validates  :content, presence: true
    validates  :reason, presence: true

    scope :incorrect, -> { joins(:results).where(results: { result: false }) }

    def self.nutrition_data(user)
        nutrition_count = where(type: 'Nutrition').count
        nutrition_true_count = joins(:results).where(results: { user_id: user.id, result: true }).count
        nutrition_false_count = joins(:results).where(results: { user_id: user.id, result: false }).count
        not_answer_count = nutrition_count - (nutrition_true_count + nutrition_false_count)

        { "正解" => nutrition_true_count, "不正解" => nutrition_false_count, "未回答" => not_answer_count }
    end

    def compound_data
        user_id = current_user.id
        compound_count = Question.where(type: 'Compound').count
        user_compound_count =  Question.where(type: 'Compound').joins(:results).where(results: { user_id: current_user.id }).count
        compound_true_count = Question.where(type: 'Compound').joins(:results).where(results: { user_id: current_user.id, result: true }).count

        (compound_count > 0) ? ((compound_true_count.to_f / compound_count) * 100) : 0
    end
end
