class Department < ActiveRecord::Base
  has_many :members
  has_many :programs
  belongs_to :member
  belongs_to :course
 validates_presence_of :name
end
