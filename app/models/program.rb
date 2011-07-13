class Program < ActiveRecord::Base
  has_many :courses
  has_many :members
  belongs_to :department

  validates_presence_of :name
  validates_presence_of :code
  cattr_reader :per_page
  @@per_page = 10

end
