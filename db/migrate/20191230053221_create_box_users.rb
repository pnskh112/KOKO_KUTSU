class CreateBoxUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :box_users do |t|
      t.references :box, foreign_key: true
      t.integer :vertical
      t.integer :side
      t.timestamps
    end
  end
end
