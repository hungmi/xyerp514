class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.integer :payment_term, default: 0

      t.timestamps
    end
  end
end
