class CourseSession < ActiveRecord::Base

  belongs_to :course
  has_many :gradebooks


  validates_presence_of :title

end
