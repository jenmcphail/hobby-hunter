class AddsUserIdToHobbies < ActiveRecord::Migration
  def change
    add_column :hobbies, :user_id, :integer
  end
end
