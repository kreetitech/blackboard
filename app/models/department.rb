class Department < ActiveRecord::Base
  has_many :members
  has_many :programs

  validates_presence_of :name
  cattr_reader :per_page
  @@per_page = 10

end
