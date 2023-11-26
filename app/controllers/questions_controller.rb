class QuestionsController < ApplicationController

    before_action :set_layout, only: [:nutrition_display, :nutrition_explanation, :compound_display, :compound_explanation]



    # nutritionクイズ画面の表示アクション
    def nutrition_display
        user = current_user
        null_results = Question.where.not(id: Result.where(user_id: user.id).pluck(:question_id))

        if null_results.exists?
            @question = null_results.find_by(type: 'nutrition')
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
    def nutrition_answer
        @question = Question.find(params[:id])
        @choices = @question.choices

        if params.key?(:selected_choice_id)
            # ユーザーが選択した解答のID
            selected_choice_id = params[:selected_choice_id].to_i
        else
            flash.now[:notice] = "選択してください"
            render :nutrition_display
            return
        end
        
        # 問題の正解のIDを取得
        correct_choice_id = @question.choices.where(correct: true).pluck(:id)
        
        if correct_choice_id.include?(selected_choice_id)
            current_user.results.create(question_id: @question.id, result: 1)
        else
            current_user.results.create(question_id: @question.id, result: 0)
        end
        redirect_to nutrition_explanation_questions_path(id: @question.id)
    
        update_rank(current_user)
    end

    # 解説表示アクション
    def nutrition_explanation
        @question = Question.find(params[:id])
        result_instance = current_user.results.find_by(question_id: @question.id)
        @result_value = result_instance.result
    end




    # compoundクイズ画面の表示アクション
    def compound_display
        user = current_user
        null_results = Question.where.not(id: Result.where(user_id: user.id).pluck(:question_id))

        if null_results.exists?
            @question = null_results.find_by(type: 'compound')
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
        @choices = @question.choices

        # ユーザーが選択した解答のID
        selected_choice_ids = params[:selected_choice_ids]

        if selected_choice_ids.present?
            selected_choice_ids = selected_choice_ids.flatten.map(&:to_i)
        else
            flash.now[:notice] = "選択してください"
            render :compound_display
            return
        end
        
        # 問題の正解のIDを取得
        correct_choice_ids = @question.choices.where(correct: true).pluck(:id)
        
        if correct_choice_ids.sort == (selected_choice_ids&.sort || [])
            current_user.results.create(question_id: @question.id, result: 1)
        else
            current_user.results.create(question_id: @question.id, result: 0)
        end
        redirect_to compound_explanation_questions_path(id: @question.id)
    
        update_rank(current_user)
    end

    # 解説表示アクション
    def compound_explanation
        @question = Question.find(params[:id])
        result_instance = current_user.results.find_by(question_id: @question.id)
        @result_value = result_instance.result
    end

    private

    def set_layout
        case action_name
        when 'nutrition_display', 'nutrition_explanation'
            self.class.layout 'nutrition'
        when 'compound_display', 'compound_explanation'
            self.class.layout 'compound'
        end
    end

    def update_rank(user)
        # ユーザーの現在のランクを取得
        current_rank = user.rank
        
        new_rank = calculate_rank(user)

        # 現在のランクと同じであれば、何もせず終了
        return if current_rank == new_rank

        # 異なる場合ユーザーのランクを更新する処理
        user.update(rank: new_rank)
    end
end
