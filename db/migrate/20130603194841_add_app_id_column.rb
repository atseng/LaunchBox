class AddAppIdColumn < ActiveRecord::Migration
  def up
  	add_column :comments, :app_id, :integer
  end

  def down
  	remove_column :comments, :app_id
  end
end
