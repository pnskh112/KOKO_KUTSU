class CreateBoxUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :box_users do |t|
      t.integer :box_id
      t.integer :user_id
      t.string :user_name
      t.integer :vertical
      t.integer :side
      t.timestamps
    end
  end
end
