class RemoveAuthorFrom < ActiveRecord::Migration[7.0]
  def up
    remove_column :results, :type
  end

  def down
    add_column :results, :type, :string
  end
end
