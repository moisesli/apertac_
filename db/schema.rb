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

ActiveRecord::Schema.define(version: 20150718173239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "anuncios", force: :cascade do |t|
    t.string   "titulo"
    t.string   "imagen"
    t.string   "descripcion"
    t.string   "contenido"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.string   "imagen5"
    t.string   "visible"
    t.string   "tipo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "apertac_paginas", force: :cascade do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.string   "visible"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.string   "imagen5"
    t.string   "imagen6"
    t.string   "imagen7"
    t.string   "imagen8"
    t.string   "imagen9"
    t.string   "imagen10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "convocatorias", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.text     "contenido"
    t.string   "visible"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "directorios", force: :cascade do |t|
    t.string   "nombre_empresa"
    t.string   "nombre_responsable"
    t.string   "numero1"
    t.string   "numero2"
    t.string   "ruc"
    t.string   "dni"
    t.string   "descripcion"
    t.text     "contenido"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "logo"
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.text     "contenido"
    t.string   "tipo_extension"
    t.string   "tipo_documento"
    t.string   "visible"
    t.string   "archivo1"
    t.string   "archivo2"
    t.string   "archivo3"
    t.string   "archivo4"
    t.string   "archivo5"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.string   "imagen5"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "noticias", force: :cascade do |t|
    t.string   "titulo"
    t.string   "resumen"
    t.text     "contenido"
    t.string   "autor"
    t.string   "img_noticia"
    t.string   "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.string   "imagen5"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presidentes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "dni"
    t.string   "telefono1"
    t.string   "telefono2"
    t.string   "ruc"
    t.string   "email"
    t.string   "descripcion"
    t.text     "contenido"
    t.string   "foto"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "imagen3"
    t.string   "imagen4"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "webamigas", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.string   "url"
    t.string   "logo"
    t.text     "contenido"
    t.string   "imagen1"
    t.string   "imagen2"
    t.string   "visible"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
