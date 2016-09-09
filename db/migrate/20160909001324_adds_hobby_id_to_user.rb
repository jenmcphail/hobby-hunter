class AddsHobbyIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :hobby_id, :integer
  end
end
