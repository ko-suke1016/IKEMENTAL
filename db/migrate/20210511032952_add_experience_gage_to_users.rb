class AddExperienceGageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :experience_gage, :integer, default: 0
  end
end
