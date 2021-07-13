class CreateLessonQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :lesson_questions do |t|
      t.string :question, null: false

      t.timestamps
    end
  end
end
