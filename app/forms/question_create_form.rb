class QuestionCreateForm
    include ActiveModel::Model
    include ActiveModel::Attributes

    attr_accessor :content, :reason, :type, :choice, :correct, :question_id
    attribute :content, :string
    attribute :reason, :string
    attribute :type, :string
    attribute :choices, :string
    attribute :question_id, :integer


    def save_with_choices(
        choice_choice1:, choice_correct1:,
        choice_choice2:, choice_correct2:,
        choice_choice3:, choice_correct3:,
        choice_choice4:, choice_correct4:
    )
        @question = Question.create(content: content, reason: reason, type: type)
        self.question_id = @question.id
        Choice.create!([
            { choice: choice_choice1, correct: choice_correct1 || false, question_id: @question.id },
            { choice: choice_choice2, correct: choice_correct2 || false, question_id: @question.id },
            { choice: choice_choice3, correct: choice_correct3 || false, question_id: @question.id },
            { choice: choice_choice4, correct: choice_correct4 || false, question_id: @question.id }
        ])

    end

    def update_with_choices(
        question_id:,
        content:, reason:, type:,
        choice_choice1:, choice_correct1:,
        choice_choice2:, choice_correct2:,
        choice_choice3:, choice_correct3:,
        choice_choice4:, choice_correct4:
        )
        # 該当のquestionとchoiceを取得する
        @question = Question.find(question_id)
        # これがないとidが取得できずルーティングエラーになる
        self.question_id = @question.id
        @choice1 = @question.choices.first
        @choice2 = @question.choices.second
        @choice3 = @question.choices.third
        @choice4 = @question.choices.fourth

        # 取得したquestionをchoiceを更新する
        @question.update(content: content, reason: reason, type: type)
        @choice1.update(choice: choice_choice1, correct: choice_correct1 || false)
        @choice2.update(choice: choice_choice2, correct: choice_correct2 || false)
        @choice3.update(choice: choice_choice3, correct: choice_correct3 || false)
        @choice4.update(choice: choice_choice4, correct: choice_correct4 || false)
    end
end