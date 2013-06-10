class CreateAppIdTable < ActiveRecord::Migration
  def up
  	add_column :props, :app_id, :integer
  end

  def down
  	remove_column :props
  end
end
