class CreateGradebooks < ActiveRecord::Migration
  def self.up
     create_table :gradebooks do |t|
    	t.integer :member_id, :null => false
        t.integer :course_session_id, :null => false
      t.timestamps
    end
   add_foreign_key :gradebooks,:member_id,:members,:id 
  # add_foreign_key :gradebooks,:course_session_id, :program_sessions,:course_id
  end

  def self.down
    drop_table :gradebooks
  end
end
