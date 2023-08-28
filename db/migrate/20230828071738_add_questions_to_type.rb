class AddQuestionsToType < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :type, :string, null: false
  end
end
