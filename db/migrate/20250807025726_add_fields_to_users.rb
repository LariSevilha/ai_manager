class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :phone, :string
    add_column :users, :avatar, :string
    add_column :users, :bio, :text
    add_column :users, :timezone, :string
  end
end
