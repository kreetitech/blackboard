class RenameCourseIdToCourseSessionId < ActiveRecord::Migration
  def self.up
    drop_foreign_key :assignments, :course_id, :courses, :id
    rename_column :assignments, :course_id, :course_session_id
    add_foreign_key :assignments, :course_session_id, :course_sessions, :id
  end

  def self.down
    drop_foreign_key :assignments, :course_session_id, :course_sessions, :id
    rename_column :assignments, :course_session_id, :course_id
    add_foreign_key :assignments, :course_id, :courses, :id
  end
end
