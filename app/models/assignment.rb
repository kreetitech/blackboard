class Assignment < ActiveRecord::Base
  belongs_to :member
  belongs_to :course_session
  has_many :comments
  has_many :discussions
  # validator
  validates_presence_of :title
  validates_presence_of :full_marks
  validates_presence_of :due_date

  cattr_reader :per_page
  @@per_page = 10

end
