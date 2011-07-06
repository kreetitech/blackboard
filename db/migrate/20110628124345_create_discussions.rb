class CreateDiscussions < ActiveRecord::Migration
  def self.up
    create_table :discussions do |t|
      t.string :title
      t.text :description
      t.integer :member_id, :null => false
      

      t.timestamps
    end
  
  end

  def self.down
    drop_table :discussions
  end
end
