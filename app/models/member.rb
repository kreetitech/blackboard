class Member < ActiveRecord::Base
  belongs_to :user
  belongs_to :department
  belongs_to :program

  has_many :addresses
  has_many :assignments
  has_many :discussions
  has_many :member_courses
  has_many :gradebooks


  validates_presence_of :registration_id
  cattr_reader :per_page
  @@per_page = 10


  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }



end
