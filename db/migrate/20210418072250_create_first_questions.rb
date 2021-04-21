class CreateFirstQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :first_questions do |t|
      t.string :question,       null: false

      t.timestamps
    end
  end
end
