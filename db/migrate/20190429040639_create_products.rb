class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :price
      t.references :department, foreign_key: true
      t.string :color
      t.text :url_link
      t.text :description

      t.timestamps
    end
  end
end
