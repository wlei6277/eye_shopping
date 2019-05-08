class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.references :donee
      t.references :donor
      t.integer :amount
      t.text :message
      t.boolean :confirmed

      t.timestamps
    end
    add_foreign_key :donations, :users, column:"donee_id"
    add_foreign_key :donations, :users, column:"donor_id"
  end
end
