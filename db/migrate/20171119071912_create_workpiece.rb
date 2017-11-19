class CreateWorkpiece < ActiveRecord::Migration[5.1]
  def change
    create_table :workpieces do |t|
      t.string :name, null: false
      t.belongs_to :customer, foreign_key: true
      t.decimal :price, precision: 12, scale: 3
      t.string :picnum, null: false
      t.string :spec

      t.timestamps
    end
  end
end
