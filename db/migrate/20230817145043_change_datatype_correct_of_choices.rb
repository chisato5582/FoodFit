class ChangeDatatypeCorrectOfChoices < ActiveRecord::Migration[7.0]
  def change
    change_column :choices, :correct, :boolean, null: false, default: false
  end
end
