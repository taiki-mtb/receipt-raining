class CreateReceiptProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipt_products do |t|
      t.references :receipt, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.integer :discount_amount
      t.integer :subtotal

      t.timestamps
    end
  end
end
