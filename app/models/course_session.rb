class CourseSession < ActiveRecord::Base
  belongs_to :course
  has_many :gradebooks
attr_accessible :course_id
validates_presence_of :title
validates_presence_of :from_date
validates_presence_of :to_date 
end
