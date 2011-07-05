class Discussion < ActiveRecord::Base
has_many :comments
belongs_to :member
attr_accessible :member_id
validates_presence_of :title
validates_presence_of :description
 
end
