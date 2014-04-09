class CreateAddresses < ActiveRecord::Migration
  def up
    create_table :addresses do |t|
      t.integer :contact_id
      t.string :street
      t.string :barangay
      t.string :city
      t.string :postal_code
      t.string :province
      t.string :country
      t.string :description
      t.string :ownership_type

      t.timestamps
    end
    add_index(:addresses, :contact_id)
  end

  def down
    drop_table :addresses
  end
end
