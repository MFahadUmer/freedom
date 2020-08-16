class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.integer :author_id
      t.text :opinion

      t.timestamps
    end
  end
end
