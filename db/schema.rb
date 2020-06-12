# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_12_201551) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "artwork_tags", force: :cascade do |t|
    t.bigint "tag_id", null: false
    t.bigint "artwork_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_artwork_tags_on_artwork_id"
    t.index ["tag_id"], name: "index_artwork_tags_on_tag_id"
  end

  create_table "artworks", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "genre"
    t.bigint "user_id"
    t.string "medium"
    t.date "date_created"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_artworks_on_user_id"
  end

  create_table "collection_favourites", force: :cascade do |t|
    t.bigint "collection_id", null: false
    t.bigint "favourite_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["collection_id"], name: "index_collection_favourites_on_collection_id"
    t.index ["favourite_id"], name: "index_collection_favourites_on_favourite_id"
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_collections_on_user_id"
  end

  create_table "curates", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "gallery_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_curates_on_artwork_id"
    t.index ["gallery_id"], name: "index_curates_on_gallery_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_favourites_on_artwork_id"
    t.index ["user_id"], name: "index_favourites_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.string "record_type"
    t.bigint "record_id"
    t.bigint "fan_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fan_id"], name: "index_follows_on_fan_id"
    t.index ["record_type", "record_id"], name: "index_follows_on_record_type_and_record_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.string "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["user_id"], name: "index_galleries_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "artwork_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["artwork_id"], name: "index_likes_on_artwork_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "origin"
    t.string "location"
    t.string "biography"
    t.date "DOB"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "artwork_tags", "artworks"
  add_foreign_key "artwork_tags", "tags"
  add_foreign_key "artworks", "users"
  add_foreign_key "collection_favourites", "collections"
  add_foreign_key "collection_favourites", "favourites"
  add_foreign_key "curates", "artworks"
  add_foreign_key "curates", "galleries"
  add_foreign_key "favourites", "artworks"
  add_foreign_key "favourites", "users"
  add_foreign_key "follows", "users", column: "fan_id"
  add_foreign_key "galleries", "users"
  add_foreign_key "likes", "artworks"
  add_foreign_key "likes", "users"
end
