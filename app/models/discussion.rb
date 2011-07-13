class Discussion < ActiveRecord::Base
  has_many :comments
  belongs_to :member
  belongs_to :assignment
  validates_presence_of :title

end
