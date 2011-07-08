class AddAdmissionToMemberTable < ActiveRecord::Migration
  def self.up
     add_column :members, :admission, :datetime

  end

  def self.down

    remove_column :members, :admission
  end
end
