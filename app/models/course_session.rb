class CourseSession < ActiveRecord::Base

  belongs_to :course
  has_many :gradebooks
  has_many :assignments

  validates_presence_of :title

end
