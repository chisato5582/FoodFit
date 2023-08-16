class CreateChoices < ActiveRecord::Migration[7.0]
  def change
    create_table :choices do |t|
      t.string :choice,    null: false
      t.string :content,   null: false
      t.references :question, foreign_key: true
      t.timestamps
    end
  end
end
