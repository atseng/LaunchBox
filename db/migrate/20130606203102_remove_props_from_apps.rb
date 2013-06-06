class RemovePropsFromApps < ActiveRecord::Migration
  def up
    remove_column :apps, :props
  end

  def down
    add_column :apps, :props, :integer
  end
end
