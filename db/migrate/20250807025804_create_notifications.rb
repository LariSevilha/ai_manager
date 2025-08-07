class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      # t.references :recipient, null: false, foreign_key: true
      # t.references :sender, null: false, foreign_key: true
      t.string :title
      t.text :message
      t.string :notification_type
      t.boolean :read
      t.json :data

      t.timestamps
    end
  end
end
