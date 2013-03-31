class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.integer :workspace_id
      t.string :name
      t.string :creator
      t.text :description
      t.string :original

      t.timestamps
    end
  end
end
