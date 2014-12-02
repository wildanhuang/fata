class CreateSlideShows < ActiveRecord::Migration
  def change
    create_table :slide_shows do |t|
      t.timestamps
      t.integer :index
      t.string :image
    end
  end
end
