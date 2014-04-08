class CreateAddresses < ActiveRecord::Migration
  def change
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
  end
end
