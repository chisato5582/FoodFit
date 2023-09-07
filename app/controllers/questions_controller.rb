class QuestionsController < ApplicationController
    layout 'question_display'

    # クイズ画面の表示アクション
    def question_display
        user = current_user
        @null_results = Question.where.not(id: Result.where(user_id: user.id).pluck(:question_id))

        if @null_results.exists?
            @question = @null_results.first
            @choices = @question.choices
        else
            @question = nil
            flash[:notice] = "問題は全て解答済みです"
            redirect_to question_tops_index_path
        end
    end

    # クイズの回答処理アクション
    def question_answer
        # @question = params[:id]
        @question = Question.find(params[:id])

        # ユーザーが選択した解答のID
        selected_choice_id = params[:selected_choice_id].to_i
        
        # 問題の正解のIDを取得
        correct_choice_ids = @question.choices.where(correct: true).pluck(:id)
        
        if correct_choice_ids.include?(selected_choice_id)
            flash[:success] = "正解です!"
            current_user.results.create(question_id: @question.id, result: 1)
        else
            flash[:error] = "不正解です"
            current_user.results.create(question_id: @question.id, result: 0)
        end
        # 解説画面への遷移
        redirect_to "#"
    end

    private

    def next
        question = Question.find(params[:id])
        @next_question = question.choice.where("id > ?", self.id).order("id ASC").first
    end

end
