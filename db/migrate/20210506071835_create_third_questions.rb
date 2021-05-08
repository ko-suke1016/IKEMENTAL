class CreateThirdQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :third_questions do |t|
      t.string :question,     null:false
      t.string :comentary,    null:false

      t.timestamps
    end
  end
end
