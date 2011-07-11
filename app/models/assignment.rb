class Assignment < ActiveRecord::Base
  belongs_to :member
  belongs_to :course_session
  has_many :comments

  # validator
  validates_presence_of :title
  validates_presence_of :full_marks
  validates_presence_of :due_date
end
