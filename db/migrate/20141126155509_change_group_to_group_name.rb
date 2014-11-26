class ChangeGroupToGroupName < ActiveRecord::Migration
  def change
    rename_column :merks, :group, :group_name
  end
end
