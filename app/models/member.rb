class Member < ActiveRecord::Base
  has_many :addresses
  has_many :assignments
  has_many :discussions
  belongs_to :user
  belongs_to :department
  belongs_to :program
  has_many :departments
  has_many :member_courses
  
end
