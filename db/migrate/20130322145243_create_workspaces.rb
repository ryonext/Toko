class CreateWorkspaces < ActiveRecord::Migration
  def change
    create_table :workspaces do |t|
      t.string :name
      t.string :owner_id

      t.timestamps
    end
  end
end
