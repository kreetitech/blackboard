class Gradebook < ActiveRecord::Base
  belongs_to :member
  belongs_to :course_session
end
