class CreateAiPredictions < ActiveRecord::Migration[7.1]
  def change
    create_table :ai_predictions do |t|
      t.references :project, null: false, foreign_key: true
      t.string :prediction_type
      t.date :predicted_completion_date
      t.decimal :confidence_score
      t.json :factors

      t.timestamps
    end
  end
end
