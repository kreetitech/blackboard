class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|

      t.string :title
      t.text :description
      t.integer :full_marks
      t.datetime :due_date
      t.integer :member_id, :null => false
      t.integer :course_id, :null => false

      t.timestamps
    end

    add_foreign_key :assignments, :course_id, :courses, :id


  end

  def self.down
    drop_table :assignments
  end
end
