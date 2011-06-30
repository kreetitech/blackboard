class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.string :title
      t.text :description
      t.integer :member_id, :null => false
      

      t.timestamps
    end
#add_foreign_key :discussions, :member_id, :member, :id
  end

  def self.down
    drop_table :discussions
  end
end
