class AddResultToResults < ActiveRecord::Migration[7.0]
  def change
    add_column :results, :result, :integer
  end
end
