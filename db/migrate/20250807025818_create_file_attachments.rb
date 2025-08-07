class CreateFileAttachments < ActiveRecord::Migration[7.1]
  def change
    create_table :file_attachments do |t|
      t.string :filename
      t.string :content_type
      t.bigint :file_size
      t.references :attachable, polymorphic: true, null: false
      t.references :user, null: false, foreign_key: true
     
      t.timestamps
    end
  end
end
