class AddBackgroundToProducts < ActiveRecord::Migration
  def change
    add_column :products, :background, :string
  end
end
