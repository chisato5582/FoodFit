class QuestionCreateForm
    include ActiveModel::Model
    include ActiveModel::Attributes

    attr_accessor :content, :reason, :choice, :correct, :question_id
    attribute :content, :string
    attribute :reason, :string
    attribute :choices, :string
    attribute :question_id, :integer


    def save_with_choices(
        choice_choice1:, choice_correct1:,
        choice_choice2:, choice_correct2:,
        choice_choice3:, choice_correct3:,
        choice_choice4:, choice_correct4:
    )
        @question = Question.create(content: content, reason: reason)
        self.question_id = @question.id
        Choice.create!([
            { choice: choice_choice1, correct: choice_correct1 || false, question_id: @question.id },
            { choice: choice_choice2, correct: choice_correct2 || false, question_id: @question.id },
            { choice: choice_choice3, correct: choice_correct3 || false, question_id: @question.id },
            { choice: choice_choice4, correct: choice_correct4 || false, question_id: @question.id }
        ])

    end

end