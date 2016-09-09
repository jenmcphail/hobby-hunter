class RenamesJoinTable < ActiveRecord::Migration
  def change
    rename_table :user_hobbies, :users_hobbies
  end
end
