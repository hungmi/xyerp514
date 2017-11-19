class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.belongs_to :customer
      t.belongs_to :factory
      t.string :address
      t.string :tel
      t.string :phone
      t.string :title
      t.text :note

      t.timestamps
    end
  end
end
