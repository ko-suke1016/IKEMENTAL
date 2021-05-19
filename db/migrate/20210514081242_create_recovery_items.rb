class CreateRecoveryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :recovery_items do |t|
      t.string :item_name,           null: false
      t.string :item_comentary,      null: false
      t.integer :item_score,         null: false

      t.timestamps
    end
  end
end
