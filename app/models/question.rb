class Question < ApplicationRecord
    has_many :results, dependent: :destroy
    has_many :choices, dependent: :destroy

    validates  :content, presence: true
    validates  :reason, presence: true



    # def render_choices
    #     if self.is_a?(Nutrition)
    #         render_nutrition_choices
    #     elsif self.is_a?(Compound)
    #         render_compound_choices
    #     end
    # end

    # private

    # def render_nutrition_choices
    #     choices.map.with_index do |choice, index|
    #         "#{index + 1}.#{choice.choice} - #{choice.correct ? "正解" : "不正解"}"
    #     end
    # end

    # def render_compound_choices
    #     choices.map.with_index do |choice, index|
    #         "#{index + 1}.#{choice.choice} - #{choice.correct ? "正解" : "不正解"}"
    #     end
    # end

end
