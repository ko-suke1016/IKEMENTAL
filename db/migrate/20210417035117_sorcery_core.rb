class SorceryCore < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name,             null: false
      t.string :email,            null: false
      t.string :crypted_password, null: false
      t.string :salt
      t.integer :physical_gage, default: 100
      t.integer :experience_gage, default: 0
      t.integer :position, null:false, default: 0
      t.timestamps                null: false
    end

    add_index :users, :email, unique: true
  end
end
