class ResultsController < ApplicationController
    before_action :set_layout, only: [:wrong_display, :wrong_explanation]

    # クイズ表示
    def wrong_display
        user = current_user
        wrong_questions = Question.incorrect.pluck(:id)

        if wrong_questions.present?
            @question = Question.find_by(id: wrong_questions)
            @choices = @question.choices
        else
            flash[:notice] = "問題は全て解答済みです"
            redirect_to question_tops_index_path
        end

    end

    # クイズ回答
    def wrong_answer
        @question = Question.find(params[:id])
        @choices = @question.choices

        case @question.type
        when 'nutrition'
            redirect_to nutrition_answer_questions_path(@question)
        when 'compound'
            redirect_to compound_answer_questions_path(@question)
        end
    end

    # 回答表示
    def wrong_explanation
        @question = Question.find(params[:id])
        result_instance = current_user.results.find_by(question_id: @question.id)
        @result_value = result_instance.result
    end

    private

    def set_layout
            self.class.layout 'wrong'
    end
end
