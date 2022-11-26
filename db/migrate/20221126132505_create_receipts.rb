class CreateReceipts < ActiveRecord::Migration[7.0]
  def change
    create_table :receipts do |t|
      t.references :store, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      t.references :register, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.integer :pay_type
      t.integer :subtotal
      t.integer :total_quantity
      t.integer :total_amount
      t.integer :tax_target_8
      t.decimal :tax_amount_8
      t.integer :tax_target_10
      t.decimal :tax_amount_10
      t.integer :total_discount_price
      t.integer :credit_amount
      t.integer :change
      t.integer :point_target
      t.integer :thistime_point
      t.integer :use_point
      t.text :memo

      t.timestamps
    end
  end
end
