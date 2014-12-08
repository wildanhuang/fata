class CreateImagings < ActiveRecord::Migration
  def change
    create_table :imagings do |t|
      t.timestamps
      t.string :type
      t.string :image
    end
  end
end
