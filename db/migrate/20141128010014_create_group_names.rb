class CreateGroupNames < ActiveRecord::Migration
  def change
    create_table :group_names do |t|
      t.timestamps
      t.string :name
      t.integer :index
    end

    add_column :merks, :group_name_id, :integer
    remove_column :merks, :group_name
  end
end
