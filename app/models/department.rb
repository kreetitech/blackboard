class Department < ActiveRecord::Base
  has_many :members
  belongs_to :member
   belongs_to :course

end
