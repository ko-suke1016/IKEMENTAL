class CreateQuestionResults < ActiveRecord::Migration[6.0]
  def change
    create_table :question_results do |t|
      t.integer :question_type, defalut: 0
      t.integer :total
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
