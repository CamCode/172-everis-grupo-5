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

ActiveRecord::Schema.define(version: 2018_11_10_233925) do

  create_table "encuesta", force: :cascade do |t|
    t.integer "motivo_id"
    t.integer "estudiante_id"
    t.string "materias"
    t.string "curso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_encuesta_on_estudiante_id"
    t.index ["motivo_id"], name: "index_encuesta_on_motivo_id"
  end

  create_table "estudiantes", force: :cascade do |t|
    t.integer "motivo_id"
    t.string "tipoId"
    t.string "numId"
    t.string "nombre"
    t.string "apellido"
    t.string "edad"
    t.string "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["motivo_id"], name: "index_estudiantes_on_motivo_id"
  end

  create_table "materia", force: :cascade do |t|
    t.string "idMateria"
    t.string "nombreMateria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materias_estudiantes", force: :cascade do |t|
    t.integer "materia_id"
    t.integer "estudiantes_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiantes_id"], name: "index_materias_estudiantes_on_estudiantes_id"
    t.index ["materia_id"], name: "index_materias_estudiantes_on_materia_id"
  end

  create_table "motivos", force: :cascade do |t|
    t.integer "idMotivo", null: false
    t.string "nombreMotivo", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
