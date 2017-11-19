class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :address
      t.string :tel
      t.string :title
      t.text :note
      t.belongs_to :customer
      t.belongs_to :factory

      t.timestamps
    end
    add_index :contacts, :name, unique: true
    add_index :contacts, :phone, unique: true
  end
end
