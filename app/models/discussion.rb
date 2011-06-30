class Discussion < ActiveRecord::Base
has_many :comments
belongs_to :member
end
