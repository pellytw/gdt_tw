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

ActiveRecord::Schema.define(:version => 20130411140206) do

  create_table "clubs", :force => true do |t|
    t.string   "nombre"
    t.string   "apodo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "equipo_fechas", :force => true do |t|
    t.integer  "equipo_id"
    t.integer  "jugador_id"
    t.integer  "fecha_id"
    t.date     "fecha_desde"
    t.date     "fecha_hasta"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "equipos", :force => true do |t|
    t.string   "nombre"
    t.integer  "participante_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "estados", :force => true do |t|
    t.boolean  "titular"
    t.boolean  "no_suma_puntos"
    t.boolean  "capitan"
    t.integer  "goles"
    t.integer  "goles_de_penal"
    t.boolean  "figura"
    t.boolean  "chenemigo"
    t.boolean  "roja"
    t.boolean  "valla_invicta"
    t.integer  "penales_errados"
    t.integer  "penales_atajados"
    t.float    "puntaje_dario"
    t.float    "puntaje_total_fecha"
    t.integer  "fecha_id"
    t.integer  "jugador_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "fechas", :force => true do |t|
    t.integer  "numero"
    t.string   "nombre_torneo"
    t.datetime "fecha_desde"
    t.datetime "fecha_hasta"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "jugador_equipos", :force => true do |t|
    t.integer  "equipo_id"
    t.integer  "jugador_id"
    t.date     "fecha_desde"
    t.date     "fecha_hasta"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "jugadors", :force => true do |t|
    t.integer  "club_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "posicion_id"
    t.boolean  "disponible"
    t.string   "nombres"
  end

  create_table "participantes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "apodo"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posicion_tacticas", :force => true do |t|
    t.integer  "tactica_id"
    t.integer  "posicion_id"
    t.date     "fecha_desde"
    t.date     "fecha_hasta"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posicions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_permissions", :force => true do |t|
    t.integer  "role_id"
    t.string   "regulator"
    t.string   "conduct"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "role_roles", :force => true do |t|
    t.integer  "role_id"
    t.integer  "parent_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tacticas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
