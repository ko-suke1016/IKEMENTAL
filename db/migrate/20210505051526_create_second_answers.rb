class CreateSecondAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :second_answers do |t|
      t.string :answer, null: false
      t.integer :score, null: false
      t.references :second_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
