# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20170216043857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.string   "titulo"
    t.text     "cuerpo"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "positivos"
    t.integer  "negativos"
    t.integer  "leidos"
    t.string   "subtitulo"
  end

  add_index "articulos", ["usuario_id"], name: "index_articulos_on_usuario_id", using: :btree

  create_table "comentarios", force: :cascade do |t|
    t.string   "autor"
    t.string   "cuerpo"
    t.integer  "articulo_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comentarios", ["articulo_id"], name: "index_comentarios_on_articulo_id", using: :btree

  create_table "eventos", force: :cascade do |t|
    t.string   "imagen"
    t.string   "titulo"
    t.text     "cuerpo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "mail"
    t.string   "password_digest"
    t.string   "acceso"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_foreign_key "articulos", "usuarios"
  add_foreign_key "comentarios", "articulos"
end
