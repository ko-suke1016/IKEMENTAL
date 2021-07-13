class CreateLessonAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_answers do |t|
      t.string :answer
      t.integer :score
      t.references :lesson_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
