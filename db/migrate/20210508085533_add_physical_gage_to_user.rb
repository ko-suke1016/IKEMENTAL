class AddPhysicalGageToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :physical_gage, :integer, default: 100
  end
end
