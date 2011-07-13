class CourseSession < ActiveRecord::Base

  belongs_to :course
  has_many :gradebooks
  has_many :assignments

  validates_presence_of :title
  cattr_reader :per_page
  @@per_page = 10


end
