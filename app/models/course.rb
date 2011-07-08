class Course < ActiveRecord::Base

  belongs_to :program

  has_many :assignments
  has_many :course_sessions
  has_many :members, :through => :member_courses

  validates_presence_of :name
end
