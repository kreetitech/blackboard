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

ActiveRecord::Schema.define(:version => 20110706072131) do

  create_table "addresses", :force => true do |t|
    t.integer  "member_id",  :null => false
    t.text     "address"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "phone_resi"
    t.string   "phone_mob"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "assignments", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "full_marks"
    t.datetime "due_date"
    t.integer  "user_id",     :null => false
    t.integer  "course_id",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["course_id"], :name => "fk_assignments_course_id_courses_id"

  create_table "comments", :force => true do |t|
    t.text     "message"
    t.integer  "discussion_id", :null => false
    t.integer  "assignment_id", :null => false
    t.integer  "member_id",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["assignment_id"], :name => "fk_comments_assignment_id_assignments_id"
  add_index "comments", ["discussion_id"], :name => "fk_comments_discussion_id_discussions_id"
  add_index "comments", ["member_id"], :name => "fk_comments_member_id_members_id"

  create_table "course_sessions", :force => true do |t|
    t.string   "title"
    t.datetime "from_date"
    t.datetime "to_date"
    t.integer  "course_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "course_sessions", ["course_id"], :name => "fk_program_sessions_course_id_courses_id"

  create_table "courses", :force => true do |t|
    t.string   "name"
    t.integer  "program_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "courses", ["program_id"], :name => "fk_courses_program_id_programs_id"

  create_table "departments", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discussions", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "user_id",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gradebooks", :force => true do |t|
    t.integer  "user_id",           :null => false
    t.integer  "course_session_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "gradebooks", ["course_session_id"], :name => "fk_gradebooks_course_session_id_course_sessions_course_id"
  add_index "gradebooks", ["user_id"], :name => "fk_gradebooks_user_id_users_id"

  create_table "profiles", :force => true do |t|
    t.string   "registration_id"
    t.integer  "user_id",         :null => false
    t.string   "gender"
    t.string   "nationality"
    t.text     "qualification"
    t.string   "father_name"
    t.string   "mother_name"
    t.datetime "date_of_birth"
    t.text     "experience"
    t.integer  "department_id",   :null => false
    t.integer  "program_id",      :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profiles", ["department_id"], :name => "fk_profiles_department_id_departments_id"
  add_index "profiles", ["program_id"], :name => "fk_profiles_program_id_programs_id"
  add_index "profiles", ["user_id"], :name => "fk_profiles_user_id_users_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "department_id", :null => false
  end

  add_index "programs", ["department_id"], :name => "fk_programs_department_id_departments_id"

  create_table "user_courses", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "course_id",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_courses", ["course_id"], :name => "fk_user_courses_course_id_courses_id"
  add_index "user_courses", ["user_id"], :name => "fk_user_courses_user_id_profiles_id"

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "password_salt"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.integer  "failed_attempts",                       :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.integer  "user_type",                             :default => 0,  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

end
