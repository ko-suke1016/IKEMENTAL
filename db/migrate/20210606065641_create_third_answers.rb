class CreateThirdAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :third_answers do |t|
      t.string :answer, null:false
      t.integer :score, null:false
      t.references :third_question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
