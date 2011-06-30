class CreateProgramSessions < ActiveRecord::Migration
  def self.up
    create_table :program_sessions do |t|
      t.string :title
      t.datetime :from_date
      t.datetime :to_date
      t.integer :course_id, :null => false
      t.timestamps
    end
    add_foreign_key :program_sessions, :course_id, :courses, :id
  end

  def self.down
    drop_table :program_sessions
  end
end
