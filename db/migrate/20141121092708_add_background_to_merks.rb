class AddBackgroundToMerks < ActiveRecord::Migration
  def change
    add_column :merks, :background, :string
  end
end
