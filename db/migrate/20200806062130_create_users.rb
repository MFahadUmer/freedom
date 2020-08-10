class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :profile_image
      t.string :cover_image

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end
