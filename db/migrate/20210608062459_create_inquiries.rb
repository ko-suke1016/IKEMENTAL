class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name
      t.string :message, null:false
      t.string :email
      t.integer :category, null:false

      t.timestamps
    end
  end
end
