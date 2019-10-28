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

ActiveRecord::Schema.define(version: 20191028230418) do

  create_table "actors", force: :cascade do |t|
    t.string   "name"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "actors_movies", force: :cascade do |t|
    t.integer  "actor_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["actor_id"], name: "index_actors_movies_on_actor_id"
    t.index ["movie_id"], name: "index_actors_movies_on_movie_id"
  end

  create_table "cinemas", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "tel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "cinema_id"
    t.integer  "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_employees_on_cinema_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.string   "movie_type"
    t.datetime "released_date"
    t.string   "leading_role"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "show_id"
    t.boolean  "booked"
    t.integer  "seat_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["show_id"], name: "index_seats_on_show_id"
  end

  create_table "shows", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "price"
    t.integer  "movie_id"
    t.integer  "cinema_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cinema_id"], name: "index_shows_on_cinema_id"
    t.index ["movie_id"], name: "index_shows_on_movie_id"
  end

end
