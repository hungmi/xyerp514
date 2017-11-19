class CreateManufacturingRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :manufacturing_records do |t|
      t.string :token
      t.belongs_to :workpiece, index: true, foreign_key: true

      t.timestamps
    end
    add_index :manufacturing_records, :token, unique: true
  end
end
