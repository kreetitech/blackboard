class RenameMembersToProfiles < ActiveRecord::Migration
  def self.up
    
    rename_table :program_sessions, :course_sessions
    add_foreign_key :gradebooks,:course_session_id, :course_sessions,:course_id
   
    drop_foreign_key :member_courses, :course_id, :courses, :id
    drop_foreign_key :member_courses, :member_id, :members, :id
    rename_column :member_courses, :member_id, :user_id 
    rename_table :member_courses, :user_courses
    add_foreign_key :user_courses, :course_id, :courses, :id
    add_foreign_key :user_courses, :user_id, :users, :id

 

    drop_foreign_key :members, :user_id, :users, :id
   # drop_foreign_key :members, :program_id, :programs, :id
   # drop_foreign_key :members, :department_id, :departments, :id
    drop_foreign_key :addresses, :member_id, :members, :id
    drop_foreign_key :gradebooks,:member_id,:members,:id

    rename_column :discussions, :member_id, :user_id
    rename_column :assignments, :member_id, :user_id
   # rename_column :comments, :member_id, :user_id
    rename_column :gradebooks, :member_id, :user_id
    rename_table :members, :profiles
    add_foreign_key :profiles ,:department_id,:departments ,:id
    add_foreign_key :profiles ,:program_id,:programs ,:id
    add_foreign_key :profiles, :user_id, :users, :id
    add_foreign_key :user_courses, :user_id, :profiles, :id
   # add_foreign_key :comments, :user_id, :profiles, :id

   # add_foreign_key :profiles, :user_id, :users, :id
   # add_foreign_key :profiles, :program_id, :programs, :id
   # add_foreign_key :profiles, :department_id, :departments, :id
   #  add_foreign_key :addresses, :user_id, :users, :id
    add_foreign_key :gradebooks,:user_id, :users,:id
  
  end

  def self.down
   
  end
end
