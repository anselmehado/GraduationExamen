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

ActiveRecord::Schema.define(version: 2021_07_17_074257) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "produits", force: :cascade do |t|
    t.string "ref_produit"
    t.text "name_produit"
    t.integer "prix_produit"
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

  create_table "ventes", force: :cascade do |t|
    t.date "date_vente"
    t.float "montant_vente"
    t.integer "qte_vente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "produit_id"
    t.index ["produit_id"], name: "index_ventes_on_produit_id"
    t.index ["user_id"], name: "index_ventes_on_user_id"
  end

  add_foreign_key "ventes", "produits"
  add_foreign_key "ventes", "users"
end
