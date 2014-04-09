class CreateMembers < ActiveRecord::Migration
  def up
    create_table :members do |t|
      t.integer :contact_id
      t.string :code
      t.string :name
      t.string :membership_type
      t.date :membership_date
      t.date :pmes_date
      t.date :closed_date
      t.boolean :closed_account
      t.string :occupation
      t.decimal :salary
      t.string :business
      t.decimal :income
      t.string :spouse_occupation
      t.decimal :spouse_income
      t.string :spouse_business
      t.decimal :spouse_income

      t.timestamps
    end
    add_index(:members, :contact_id)
  end
  def down
    drop_table :members
  end
end
