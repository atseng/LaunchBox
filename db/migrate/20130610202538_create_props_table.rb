class CreatePropsTable < ActiveRecord::Migration
  def up
  	create_table :props do |t|
      t.timestamps
    end
  end

  def down
  	drop_table :props
  end
end
