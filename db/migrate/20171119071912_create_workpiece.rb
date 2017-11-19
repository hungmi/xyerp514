class CreateWorkpiece < ActiveRecord::Migration[5.1]
  def change
    create_table :workpieces do |t|
      t.string :name, null: false
      t.string :picnum, null: false
      t.decimal :price, precision: 12, scale: 3
      t.string :spec
      t.text :note
      t.belongs_to :customer, index: true, foreign_key: true

      t.timestamps
    end
    add_index :workpieces, :picnum, unique: true
  end
end
