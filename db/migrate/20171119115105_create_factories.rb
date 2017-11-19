class CreateFactories < ActiveRecord::Migration[5.1]
  def change
    create_table :factories do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :skill, null: false
      t.text :note
      t.integer :procedures_count, default: 0

      t.timestamps
    end
  end
end
