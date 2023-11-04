class Admin::QuestionsController < Admin::BaseController
    # require 'active_support/core_ext/hash/keys'
    require 'json'

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
        @questions = Question.all
    end

    def show
        @question = Question.find(params[:id])
    end

    def edit
        edit_question = Question.find(params[:id])
        @question_form = QuestionCreateForm.new(question_id: edit_question.id,
            content: edit_question.content,
            reason: edit_question.reason,
            hint: edit_question.hint,
            type: edit_question.type,
            choices: {
                choice1: edit_question.choices.first.choice,
                correct1: edit_question.choices.first.correct,
                choice2: edit_question.choices.second.choice,
                correct2: edit_question.choices.second.correct,
                choice3: edit_question.choices.third.choice,
                correct3: edit_question.choices.third.correct,
                choice4: edit_question.choices.fourth.choice,
                correct4: edit_question.choices.fourth.correct
            }
        )
        hash = eval(@question_form.choices)
        @parsed_hash = JSON.parse(hash.to_json, symbolize_name: true)
    end

    def update
        @question = QuestionCreateForm.new(question_params)

        if  @question.update_with_choices(
            question_id: params[:id],
            content: params.dig(:question_create_form, :content),
            reason: params.dig(:question_create_form, :reason),
            hint: params.dig(:question_create_form, :hint),
            type: params.dig(:question_create_form, :type),
            choice_choice1: params.dig(:question_create_form, :choices, :choice1),
            choice_correct1: params.dig(:question_create_form, :choices, :correct1),
            choice_choice2: params.dig(:question_create_form, :choices, :choice2),
            choice_correct2: params.dig(:question_create_form, :choices, :correct2),
            choice_choice3: params.dig(:question_create_form, :choices, :choice3),
            choice_correct3: params.dig(:question_create_form, :choices, :correct3),
            choice_choice4: params.dig(:question_create_form, :choices, :choice4),
            choice_correct4: params.dig(:question_create_form, :choices, :correct4)
        )
        redirect_to admin_question_path(@question.question_id), success: "問題を更新しました"
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
        params.require(:question_create_form).permit(:content, :reason, :hint, :type, choices: [:choice1, :correct1, :choice2, :correct2, :choice3, :correct3, :choice4, :correct4])
    end
end
