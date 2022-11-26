class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.string :name
      t.integer :code
      t.integer :tax_type

      t.timestamps
    end
  end
end
