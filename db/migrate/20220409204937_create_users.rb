class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :first_name
      t.string :last_name
      t.string :email_address
      t.string :phone_number
      t.string :password_digest

      t.timestamps
    end
  end
end
