class RenamesJoinTableAgain < ActiveRecord::Migration
  def change
    rename_table :users_hobbies, :hobbies_users
  end
end
