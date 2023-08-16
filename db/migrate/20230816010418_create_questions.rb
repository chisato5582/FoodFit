class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content,  null: false
      t.string :reason,   null: false
      t.timestamps
    end
  end
end
