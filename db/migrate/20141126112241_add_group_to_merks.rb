class AddGroupToMerks < ActiveRecord::Migration
  def change
    add_column :merks, :group, :string
  end
end
