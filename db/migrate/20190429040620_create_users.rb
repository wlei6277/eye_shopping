class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :donation_total
      t.integer :link_click_total
      t.integer :link_click_revenue
      t.timestamps
    end
  end
end
