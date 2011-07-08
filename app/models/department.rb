class Department < ActiveRecord::Base
  has_many :members
  has_many :programs

  validates_presence_of :name
end
