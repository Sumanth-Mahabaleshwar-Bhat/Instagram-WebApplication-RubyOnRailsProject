class AddPrivateApiKeyCiphertextToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :private_api_key_ciphertext, :text
  end
end
