class Admin::QuestionsController < Admin::BaseController

    def new
        @question = QuestionCreateForm.new
    end

    def create
        @question = QuestionCreateForm.new(question_params)

        if @question.save_with_choices(
            choice_choice1: params.dig(:question_create_form, :choices, :choice1),
            choice_correct1: params.dig(:question_create_form, :choices, :correct1),
            choice_choice2: params.dig(:question_create_form, :choices, :choice2),
            choice_correct2: params.dig(:question_create_form, :choices, :correct2),
            choice_choice3: params.dig(:question_create_form, :choices, :choice3),
            choice_correct3: params.dig(:question_create_form, :choices, :correct3),
            choice_choice4: params.dig(:question_create_form, :choices, :choice4),
            choice_correct4: params.dig(:question_create_form, :choices, :correct4)
        )
            redirect_to admin_question_path(@question.question_id), success: "問題を作成しました"
        else
            flash.now[:danger] = "問題の作成に失敗しました"
            render :new
        end
    end

    def index
        @question = Question.all
    end

    def show
        @question = Question.find(params[:id])
    end

    # def edit
    #     @question = Question.find(params[:id])
    #     @edit_choice1 = @question.choices
    #     @edit_choice2 = @question.choices
    #     @edit_choice3 = @question.choices
    #     @edit_choice4 = @question.choices
    # end

    def update
        if @question.update(question_params)
            redirect_to admin_question_path, success: "問題を更新しました"
        else
            flash.now[:danger] = "問題の変更に失敗しました"
            render :edit
        end
    end

    def destroy
        @question = Question.find(params[:id])
        @question.destroy!
        redirect_to admin_questions_path, notice: "問題を削除しました"
    end

    private

    def question_params
        params.require(:question_create_form).permit(:content, :reason, choices: [:choice1, :correct1, :choice2, :correct2, :choice3, :correct3, :choice4, :correct4])
        # params.require(:question).permit(:content, :reason, :choice1, :correct1, :choice2, :correct2, :choice3, :correct3, :choice4, :correct4, :question_id)
    end
end
