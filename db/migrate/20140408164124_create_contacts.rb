class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|
      t.integer :member_id
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.date   :birth_date
      t.string :birth_place
      t.string :gender
      t.string :civil_status
      t.string :education_level
      t.string :telephone
      t.string :mobile_phone
      t.string :email
      t.timestamps
    end
    add_index(:contacts, :member_id)
  end
  def down
    drop_table :contacts
  end
end
