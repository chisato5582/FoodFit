class AddHintToQuestion < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :hint, :string, null: true
  end
end
