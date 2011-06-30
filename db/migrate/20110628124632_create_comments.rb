class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :message
      t.integer :discussion_id, :null => false
      t.integer :assignment_id, :null => false
      t.integer :member_id, :null => false

      t.timestamps
    end
    add_foreign_key :comments, :discussion_id, :discussions, :id
    add_foreign_key :comments, :assignment_id, :assignments, :id
    #add_foreign_key :comments, :member_id, :members, :id
  end

  def self.down
    drop_table :comments
  end
end
