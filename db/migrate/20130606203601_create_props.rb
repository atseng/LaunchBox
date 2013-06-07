class CreateProps < ActiveRecord::Migration
  def change
    create_table :props do |t|
      t.integer :app_id

      t.timestamps
    end
  end
end
