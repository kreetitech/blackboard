class Course < ActiveRecord::Base
  has_many :assignments
  belongs_to :program
  has_many :program_sessions
  has_many :member_courses
end
