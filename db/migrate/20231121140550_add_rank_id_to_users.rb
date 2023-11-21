class AddRankIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rank_id, :bigint
    add_index :users, :rank_id
    add_foreign_key :users, :ranks, column: :rank_id, on_delete: :nullify
  end
end
