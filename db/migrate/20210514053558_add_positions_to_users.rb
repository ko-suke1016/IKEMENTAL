class AddPositionsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :position, :integer,  null:false, default: 0
  end
end
