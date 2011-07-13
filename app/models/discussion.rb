class Discussion < ActiveRecord::Base
  has_many :comments
  belongs_to :member
  belongs_to :assignment
  validates_presence_of :title
cattr_reader :per_page
  @@per_page = 10

end
