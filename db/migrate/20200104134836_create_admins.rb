class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :password_confirmation
      t.string :remember_token

      t.timestamps
    end
  end
end
