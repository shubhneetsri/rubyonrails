class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.string :price
      t.string :desc

      t.timestamps
    end
  end
end
