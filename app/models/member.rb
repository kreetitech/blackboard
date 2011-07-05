class Member < ActiveRecord::Base
  has_many :addresses
  has_many :assignments
  has_many :discussions
  belongs_to :user
  belongs_to :department
  belongs_to :program
  has_many :departments
  has_many :member_courses
  has_many :gradebooks
 attr_accessible :user_id,:department_id,:program_id
# validators
validates_presence_of :registration
validates_uniqueness_of :registration
validates_presence_of :gender
validates_presence_of :nationality
validates_presence_of :father_name
validates_presence_of :date_of_birth
  
end
