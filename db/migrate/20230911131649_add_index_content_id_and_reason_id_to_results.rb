class AddIndexContentIdAndReasonIdToResults < ActiveRecord::Migration[7.0]
  def change
    add_index :results, [:question_id, :user_id], unique: true
  end
end
