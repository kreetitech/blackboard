class Assignment < ActiveRecord::Base
  belongs_to :member
  belongs_to :course
  has_many :comments
 attr_accessible :member_id,:course_id
# validator
validates_presence_of :title
validates_presence_of :description
validates_presence_of :full_marks
validates_presence_of :due_date
end
