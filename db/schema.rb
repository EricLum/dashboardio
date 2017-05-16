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

ActiveRecord::Schema.define(version: 20170426152855) do

  create_table "dashboards", force: :cascade do |t|
    t.string   "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string   "name"
    t.boolean  "completed"
    t.integer  "pointscurrent"
    t.integer  "pointsgoal"
    t.integer  "task_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "dashboard_id"
    t.index ["dashboard_id"], name: "index_goals_on_dashboard_id"
    t.index ["task_id"], name: "index_goals_on_task_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "taskname"
    t.boolean  "completed"
    t.text     "description"
    t.integer  "points"
    t.integer  "goal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "goals_id"
    t.index ["goal_id"], name: "index_tasks_on_goal_id"
    t.index ["goals_id"], name: "index_tasks_on_goals_id"
  end

end
