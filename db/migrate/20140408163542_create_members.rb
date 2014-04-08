class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_code
      t.string :member_name
      t.string :membership_type

      t.timestamps
    end
  end
end
