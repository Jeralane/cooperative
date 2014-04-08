class CreateBeneficiaries < ActiveRecord::Migration
  def change
    create_table :beneficiaries do |t|
      t.integer :member_id
      t.integer :contact_id
      t.string :relationship

      t.timestamps
    end
  end
end
