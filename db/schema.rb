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

ActiveRecord::Schema.define(version: 2022_03_14_152318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklist_items", force: :cascade do |t|
    t.bigint "checklist_id", null: false
    t.bigint "template_item_id", null: false
    t.boolean "done", default: false
    t.boolean "resolved_the_issue", default: false
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["checklist_id"], name: "index_checklist_items_on_checklist_id"
    t.index ["template_item_id"], name: "index_checklist_items_on_template_item_id"
  end

  create_table "checklists", force: :cascade do |t|
    t.bigint "template_id", null: false
    t.datetime "resolved_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["template_id"], name: "index_checklists_on_template_id"
  end

  create_table "template_items", force: :cascade do |t|
    t.bigint "template_id", null: false
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "action"
    t.index ["template_id"], name: "index_template_items_on_template_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "checklist_items", "checklists"
  add_foreign_key "checklist_items", "template_items"
  add_foreign_key "checklists", "templates"
  add_foreign_key "template_items", "templates"
end
