class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :integer, default: 0, null: false
      t.string :type
      t.timestamps
    end
  end
end
