class Assignment < ActiveRecord::Base
  belongs_to :member
  belongs_to :course
  has_many :comments
end
