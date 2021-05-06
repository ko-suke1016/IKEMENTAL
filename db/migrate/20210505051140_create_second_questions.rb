class CreateSecondQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :second_questions do |t|
      t.string :question, null: false

      t.timestamps
    end
  end
end
