class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :tcard_number
      t.integer :point

      t.timestamps
    end
  end
end
