class Course < ActiveRecord::Base

  belongs_to :program

  has_many :assignments
  has_many :course_sessions
  has_many :members, :through => :member_courses

  validates_presence_of :name
  cattr_reader :per_page
  @@per_page = 10

end
