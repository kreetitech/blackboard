class AddingAssignmentIdToDiscussionTable < ActiveRecord::Migration
  def self.up
    add_column :discussions, :assignment_id, :integer, :null => false
    add_foreign_key :discussions, :assignment_id, :assignments, :id
  end

  def self.down
    drop_foreign_key :discussions, :assignment_id, :assignments, :id
    remove_column :discussions, :assignment_id, :integer
  end
end
