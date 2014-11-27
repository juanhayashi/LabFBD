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

ActiveRecord::Schema.define(version: 20141127055552) do

  create_table "fechas", force: true do |t|
    t.date     "fecha"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mensajes", force: true do |t|
    t.integer  "fecha_id"
    t.integer  "texto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mensajes", ["fecha_id"], name: "index_mensajes_on_fecha_id"
  add_index "mensajes", ["texto_id"], name: "index_mensajes_on_texto_id"

  create_table "pais", force: true do |t|
    t.string   "nombre_pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "textos", force: true do |t|
    t.text     "texto"
    t.string   "idioma"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tusuarios", force: true do |t|
    t.string   "username"
    t.integer  "mensaje_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tusuarios", ["mensaje_id"], name: "index_tusuarios_on_mensaje_id"

  create_table "tw_usuarios", force: true do |t|
    t.string   "username"
    t.integer  "mensaje_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tw_usuarios", ["mensaje_id"], name: "index_tw_usuarios_on_mensaje_id"

  create_table "usuarios", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
