class AddCashAmountToReceipt < ActiveRecord::Migration[7.0]
  def change
    add_column :receipts, :cash_amount, :integer
  end
end
