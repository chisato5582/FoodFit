class CompoundsController < ApplicationController
    layout 'compound', only: [:compound_display, :compound_explanation]

    # compoundクイズ画面の表示アクション
    def compound_display
        user = current_user
        null_results = Question.where.not(id: Result.where(user_id: user.id).pluck(:question_id))

        if null_results.exists?
            @question = @null_results.find_by(type: 'compound')
            if @question.present?
                @choices = @question.choices
            else
                flash[:notice] = "問題は全て解答済みです"
                redirect_to question_tops_index_path
            end
            
        else
            @question = nil
            flash[:notice] = "問題は全て解答済みです"
            redirect_to question_tops_index_path
        end
    end

    # クイズの回答処理アクション
    def compound_answer
        @question = Question.find(params[:id])

        # ユーザーが選択した解答のID
        selected_choice_ids = params[:selected_choice_ids].flatten.map(&:to_i)
        
        # 問題の正解のIDを取得
        correct_choice_ids = @question.choices.where(correct: true).pluck(:id)
        
        if correct_choice_ids.sort == selected_choice_ids.sort
            flash[:success] = "正解です!"
            current_user.results.create(question_id: @question.id, result: 1)
        else
            flash[:error] = "不正解です"
            current_user.results.create(question_id: @question.id, result: 0)
        end
        redirect_to compound_explanation_questions_path(id: @question.id)
    end

    # 解説表示アクション
    def compound_explanation
        @question = Question.find(params[:id])
    end


end
