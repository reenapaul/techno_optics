class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :product_name
      t.string :brand
      t.string :description
      t.string :color
      t.integer :price
      t.string :feature1
      t.string :feature2

      t.timestamps
    end
  end
end
