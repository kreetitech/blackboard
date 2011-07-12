class AddmarksToGradebooks < ActiveRecord::Migration
  def self.up
	add_column :gradebooks, :marks, :integer

  end

  def self.down
      remove_column :gradebooks, :marks
  end
end
