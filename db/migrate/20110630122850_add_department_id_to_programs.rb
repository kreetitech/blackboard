class AddDepartmentIdToPrograms < ActiveRecord::Migration
  def self.up
    add_column :programs, :department_id, :integer, :null => false
    add_foreign_key :programs, :department_id, :departments, :id
  end

  def self.down
    drop_foreign_key :programs, :department_id, :departments, :id
    remove_column :programs, :department_id, :integer
  end
end
