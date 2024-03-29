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

ActiveRecord::Schema.define(version: 20140104232220) do

  create_table "clientes", force: true do |t|
    t.string   "nome",       limit: 80
    t.integer  "idade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pratos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pratos_restaurantes", id: false, force: true do |t|
    t.integer "prato_id"
    t.integer "restaurante_id"
  end

  create_table "qualificacoes", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "restaurante_id"
    t.float    "nota"
    t.float    "valor_gasto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "qualificacoes", ["cliente_id"], name: "index_qualificacoes_on_cliente_id", using: :btree
  add_index "qualificacoes", ["restaurante_id"], name: "index_qualificacoes_on_restaurante_id", using: :btree

  create_table "receitas", force: true do |t|
    t.integer  "prato_id"
    t.text     "conteudo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurantes", force: true do |t|
    t.string   "nome",          limit: 80
    t.string   "endereco"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "especialidade", limit: 40
  end

end
