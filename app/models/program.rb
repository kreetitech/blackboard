class Program < ActiveRecord::Base
  has_many :courses
  has_many :members
  belongs_to :department
#  attr_accessible :department_id
  validates_presence_of :name
  validates_presence_of :code 
end
