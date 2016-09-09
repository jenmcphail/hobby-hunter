class CreatesUserHobbiesJoinTable < ActiveRecord::Migration
  def change
    create_table :user_hobbies do |t|
      t.references :user, index: true, foreign_key: true
      t.references :hobby, index: true, foreign_key: true
    end
  end
end
