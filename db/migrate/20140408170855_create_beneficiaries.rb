class CreateBeneficiaries < ActiveRecord::Migration
  def up
    create_table :beneficiaries do |t|
      t.integer :member_id
      t.integer :contact_id
      t.string :relationship

      t.timestamps
    end
    add_index(:beneficiaries, :member_id)
    add_index(:beneficiaries, :contact_id)
  end

  def down
    drop_table :beneficiaries
  end
end
