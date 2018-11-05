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


ActiveRecord::Schema.define(version: 2018_11_05_043713) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "synopsis"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
