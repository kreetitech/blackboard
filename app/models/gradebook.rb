class Gradebook < ActiveRecord::Base
  belongs_to :member
  belongs_to :course_session
  cattr_reader :per_page
  @@per_page = 10

end
