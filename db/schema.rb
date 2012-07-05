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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120705093058) do

  create_table "categoria", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "exemplars", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "filmes", :force => true do |t|
    t.string   "tipo_de_midia"
    t.string   "atores_principais"
    t.string   "diretor"
    t.string   "distribuidora"
    t.string   "genero"
    t.integer  "tempo_de_duracao"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "jogos", :force => true do |t|
    t.string   "tipo_de_midia"
    t.text     "requisitos_computacionais"
    t.string   "genero"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  create_table "locacaos", :force => true do |t|
    t.date     "data_de_retirada"
    t.date     "data_de_entrega"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.integer  "ano"
    t.string   "imagem"
    t.decimal  "custo_de_locacao"
    t.integer  "tempo_de_utilizacao"
    t.integer  "quantidade_de_itens"
    t.string   "qualidade"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
