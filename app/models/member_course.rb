class MemberCourse < ActiveRecord::Base
  belongs_to :member
  belongs_to :course
  attr_accessible :member_id,:course_id
  validates_presence_of :due_date
 
end
