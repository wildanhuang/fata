class CreateMerks < ActiveRecord::Migration
  def change
    create_table :merks do |t|
      t.timestamps
      t.string :name
    end
  end
end
