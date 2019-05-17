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

ActiveRecord::Schema.define(version: 2019_05_17_100216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "cityCode"
    t.string "provinceCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cityCode"], name: "index_areas_on_cityCode"
    t.index ["provinceCode"], name: "index_areas_on_provinceCode"
  end

  create_table "cities", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "provinceCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provinceCode"], name: "index_cities_on_provinceCode"
  end

  create_table "provinces", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "streets", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "areaCode"
    t.string "provinceCode"
    t.string "cityCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["areaCode"], name: "index_streets_on_areaCode"
    t.index ["cityCode"], name: "index_streets_on_cityCode"
    t.index ["provinceCode"], name: "index_streets_on_provinceCode"
  end

  create_table "villages", primary_key: "code", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "areaCode"
    t.string "provinceCode"
    t.string "cityCode"
    t.string "streetCode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["areaCode"], name: "index_villages_on_areaCode"
    t.index ["cityCode"], name: "index_villages_on_cityCode"
    t.index ["provinceCode"], name: "index_villages_on_provinceCode"
    t.index ["streetCode"], name: "index_villages_on_streetCode"
  end

end
