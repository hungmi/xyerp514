class CreateProcedures < ActiveRecord::Migration[5.1]
  def change
    create_table :procedures do |t|
      t.belongs_to :factory, index: true, foreign_key: true
      t.belongs_to :manufacturing_record, index: true, foreign_key: true
      t.string :name
      t.integer :amount
      t.decimal :price
      t.datetime :arrived_at
      t.datetime :finished_at
      t.datetime :processing_time
      t.text :note

      t.timestamps
    end
  end
end
