class QuestionForm
    include ActiveModel::Model
    include ActiveModel::Attributes

    attr_accessor :content, :reason, :choice, :correct, :question_id
    attribute :content, :string
    attribute :reason, :string
    attribute :type, :string
    attribute :choices, :string
    attribute :question_id, :integer

end