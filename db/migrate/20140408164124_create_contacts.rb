class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :last_name
      t.string :first_name
      t.string :middle_name
      t.date   :birth_date
      t.string :birth_place
      t.string :gender
      t.string :telephone
      t.string :mobile_phone
      t.string :email
      t.timestamps
    end
  end
end
