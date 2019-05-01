class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.references :follower
      t.references :following

      t.timestamps
    end
    add_foreign_key :followings, :users, column:"follower_id"
    add_foreign_key :followings, :users, column:"following_id"
  end
end
