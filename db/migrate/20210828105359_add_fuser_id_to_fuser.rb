class AddFuserIdToFuser < ActiveRecord::Migration[6.1]
  def change
    add_column :fusers, :fuser_id, :integer
    add_index :fusers, :fuser_id
  end
end
