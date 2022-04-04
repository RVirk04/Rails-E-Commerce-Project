class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price, default: 0
      t.string :colour
      t.string :size
      t.string :details
      t.string :code
      t.string :brand
      t.string :sizeandfit
      t.string :look
      t.string :lookafterme
      t.string :aboutme
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
