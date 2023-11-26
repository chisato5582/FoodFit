class ChangeDefaultRankId < ActiveRecord::Migration[7.0]
  def change
    change_column_default :users, :rank_id, 1
  end
end
