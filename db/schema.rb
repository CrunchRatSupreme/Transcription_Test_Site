# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_04_28_204953) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "items", force: :cascade do |t|
    t.datetime "claimed_at"
    t.string "claimed_by"
    t.string "claimed_email"
    t.string "claimed_first_name"
    t.string "claimed_last_name"
    t.string "collection"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "image_url"
    t.string "source_url"
    t.string "status"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "transcriptions", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.bigint "item_id", null: false
    t.string "transcriber_name"
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_transcriptions_on_item_id"
  end

  add_foreign_key "transcriptions", "items"
end
