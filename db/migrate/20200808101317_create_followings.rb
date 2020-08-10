class CreateFollowings < ActiveRecord::Migration[5.2]
  def change
    create_table :followings do |t|
      t.integer :user_id
      t.integer :followed_id

      t.timestamps
    end
    add_foreign_key :followings, :users, column: :followed_id
  end
end
