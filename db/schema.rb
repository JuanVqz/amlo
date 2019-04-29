# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_04_29_045524) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "noticias", force: :cascade do |t|
    t.string "titulo"
    t.string "descripcion_corta"
    t.string "url"
    t.string "contenido"
    t.datetime "fecha", default: -> { "CURRENT_TIMESTAMP" }
    t.bigint "sitio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sitio_id"], name: "index_noticias_on_sitio_id"
  end

  create_table "sitios", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "url"
    t.integer "ultimo_indexado", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "noticias", "sitios"
end
