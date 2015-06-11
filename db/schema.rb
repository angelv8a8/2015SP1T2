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

ActiveRecord::Schema.define(version: 20150515010810) do

  create_table "fases", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "matchdate"
    t.integer  "fase"
    t.string   "estado"
    t.integer  "equipo_local"
    t.integer  "equipo_visitante"
    t.integer  "marcador_local"
    t.integer  "marcador_visitante"
    t.integer  "equipo_ganador"
    t.integer  "equipo_perdedor"
    t.boolean  "empate?"
    t.integer  "grupo"
    t.integer  "estadio"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "stadia", force: :cascade do |t|
    t.string   "nombre"
    t.string   "ciudad"
    t.string   "foto"
    t.date     "fecha_construccion"
    t.integer  "capacidad"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "nombre"
    t.string   "entrenador"
    t.string   "bandera"
    t.string   "uniforme"
    t.string   "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "group_id"
  end

end
