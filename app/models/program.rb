class Program < ActiveRecord::Base
  has_many :courses
  has_many :members
  belongs_to :department

  validates_presence_of :name
  validates_presence_of :code
end
