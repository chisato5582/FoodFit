class CreateRanks < ActiveRecord::Migration[7.0]
  def change
    create_table :ranks do |t|
      t.string :rank_name,  null: false
      t.integer :response,  null: false

      t.timestamps
    end
  end
end
