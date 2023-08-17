class Admin::QuestionsController < Admin::BaseController

    def new
        @question = Question.new
        @choice = @question.choices.new
    end

    def create
        @question = Question.new(question_params)
        if @question.save
            redirect_to admin_question_path, success: "問題を作成しました"
        else
            flash.now[:danger] = "問題の作成に失敗しました"
            render :new
        end
    end

    def index; end

    def show
        @question = Question.find(params[:id])
        @choices = @question.choices
    end

    def edit; end

    def update
        if @question.update(question_params)
            redirect_to admin_question_path, success: "問題を更新しました"
        else
            flash.now[:danger] = "問題の変更に失敗しました"
            render :edit
        end
    end

    def destroy
        @question.destroy!
        redirect_to admin_questions_path, success: "問題を削除しました"
    end

    private

    def question_params
        params.require(:question).permit(:content, :reason, choices_attributes: [:choice, :correct])
    end

end
