class CreateMemberCourses < ActiveRecord::Migration
  def self.up
    create_table :member_courses do |t|
      t.integer :member_id, :null => false
      t.integer :course_id, :null => false
      t.timestamps

    end
    add_foreign_key :member_courses, :course_id, :courses, :id
  end

  def self.down
    drop_table :member_courses
  end
end
