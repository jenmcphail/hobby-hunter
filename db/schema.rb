ActiveRecord::Schema.define(version: 20160909020409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hobbies", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "video_url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "hobbies_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hobby_id"
  end

  add_index "hobbies_users", ["hobby_id"], name: "index_hobbies_users_on_hobby_id", using: :btree
  add_index "hobbies_users", ["user_id"], name: "index_hobbies_users_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "hobby_id"
  end

  add_foreign_key "hobbies_users", "hobbies"
  add_foreign_key "hobbies_users", "users"
end
