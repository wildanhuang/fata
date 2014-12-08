class ChangeTypeToNameImaging < ActiveRecord::Migration
  def change
    rename_column :imagings, :type, :name
  end
end
