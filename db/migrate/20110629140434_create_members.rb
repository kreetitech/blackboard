class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :registration_id
       t.integer :user_id, :null => false
       t.string :gender
       t.string :nationality
       t.text :qualification
       t.string :father_name
       t.string :mother_name
       t.datetime :date_of_birth
       t.text :experience
       t.integer :department_id, :null => false
       t.integer :program_id, :null => false
       t.timestamps
    end
    add_foreign_key :members, :user_id, :users, :id
    add_foreign_key :member_courses, :member_id, :members, :id
    add_foreign_key :comments, :member_id, :members, :id
  end

  def self.down
    drop_table :members
  end
end
