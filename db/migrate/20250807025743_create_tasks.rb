class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.integer :priority
      t.date :due_date
      t.decimal :estimated_hours
      t.decimal :actual_hours
      t.integer :position
      t.references :project, null: false, foreign_key: true
      # t.references :assignee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
