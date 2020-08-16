class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :opinion_id

      t.timestamps
    end
    add_foreign_key :likes, :users, column: :user_id
    add_foreign_key :likes, :opinions, column: :opinion_id

  end
end
