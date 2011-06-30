class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.integer :program_id, :null => false
      t.timestamps
    end
    add_foreign_key :courses, :program_id, :programs, :id
  end

  def self.down
    drop_table :courses
  end
end
