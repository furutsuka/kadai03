class AddProfileImageToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :profile_image_id, :text
    add_column :users, :name, :string, null: false, default: ""
  end
end