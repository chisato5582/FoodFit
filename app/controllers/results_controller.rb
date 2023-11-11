class ResultsController < ApplicationController
    before_action :set_layout, only: [:wrong_display, :wrong_explanation]

    # クイズ表示
    def wrong_display
        user = current_user
        wrong_questions = Question.incorrect.pluck(:id)
        if wrong_questions.present?
            wrong_random = wrong_questions.sample
            @question = Question.find_by(id: wrong_random)
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
        
        # ユーザーが選択した解答のID
        selected_choice_ids = params[:selected_choice_ids]

        if selected_choice_ids.present?
            selected_choice_ids = selected_choice_ids.flatten.map(&:to_i)
        else
            flash.now[:notice] = "選択してください"
            render :wrong_display
            return
        end
        
        # 問題の正解のIDを取得
        correct_choice_ids = @question.choices.where(correct: true).pluck(:id)
        
        if correct_choice_ids.sort == (selected_choice_ids&.sort || [])
            current_user.results.update(question_id: @question.id, result: 1)
        else
            current_user.results.update(question_id: @question.id, result: 0)
        end
        redirect_to wrong_explanation_results_path(id: @question.id)
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
