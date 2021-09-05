class AddFuserIdToFable < ActiveRecord::Migration[6.1]
  def change
    add_column :fables, :fuser_id, :integer
    add_index :fables, :fuser_id
  end
end
