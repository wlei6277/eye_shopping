class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.references :follower
      t.references :following

      t.timestamps
    end
    add_foreign_key :followers, :users, column:"follower_id"
    add_foreign_key :followers, :users, column:"following_id"
  end
end
