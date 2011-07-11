class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      
      t.string :title
      t.text :description
      t.integer :full_marks
      t.datetime :due_date
      t.integer :member_id, :null => false
      t.integer :course_session_id, :null => false
      
      t.timestamps
    end

add_foreign_key :assignments, :course_session_id, :course_sessions, :id


  end

  def self.down
    drop_table :assignments
  end
end
