class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.timestamps
      t.string :name
      t.integer :merk_id
      t.text :description
    end
  end
end
