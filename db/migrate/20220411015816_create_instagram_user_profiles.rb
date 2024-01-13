class CreateInstagramUserProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :instagram_user_profiles do |t|
      t.text :bio

      t.timestamps
    end
  end
end
