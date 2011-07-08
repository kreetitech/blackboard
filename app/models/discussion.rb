class Discussion < ActiveRecord::Base
  has_many :comments
  belongs_to :member

  validates_presence_of :title

end
