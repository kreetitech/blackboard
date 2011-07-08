class RenameProgramSessionsToCourseSessions < ActiveRecord::Migration
  def self.up
    drop_foreign_key :program_sessions, :course_id, :courses, :id
    rename_table :program_sessions, :course_sessions
    add_foreign_key :course_sessions, :course_id, :courses, :id

    add_foreign_key :gradebooks, :course_session_id, :course_sessions,:course_id
  end

  def self.down
    drop_foreign_key :course_sessions, :course_id, :courses, :id
    rename_table :course_sessions, :program_sessions
    add_foreign_key :program_sessions, :course_id, :courses, :id
  end
end
