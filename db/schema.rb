# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_220_201_173_756) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'developers', force: :cascade do |t|
    t.string 'title'
    t.string 'description'
    t.string 'image'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'products', force: :cascade do |t|
    t.string 'title'
    t.string 'description'
    t.string 'image'
    t.float 'price'
    t.string 'status'
    t.bigint 'developer_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['developer_id'], name: 'index_products_on_developer_id'
  end

  add_foreign_key 'products', 'developers'
end
