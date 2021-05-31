class CreateRecoveryQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :recovery_questions do |t|
      t.string :question, null:false
      t.string :comentary, null:false

      t.timestamps
    end
  end
end
