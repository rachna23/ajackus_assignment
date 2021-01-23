class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :first_name, limit: 50
      t.string :last_name, limit: 50
      t.integer :phone, limit: 10
      t.string :email
      t.text :message, limit: 500

      t.timestamps
    end
    add_index :contacts, :email, unique: true
  end
end
