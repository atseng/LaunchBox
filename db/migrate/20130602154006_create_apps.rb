class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :url
      t.string :email
      t.string :codebase_url
      t.text :description
      t.integer :props

      t.timestamps
    end
  end
end
