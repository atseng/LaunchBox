class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :url
      t.string :email
      t.stringdescription :codebase_url
      t.integer :props

      t.timestamps
    end
  end
end
