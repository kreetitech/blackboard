class Comment < ActiveRecord::Base
  belongs_to :assignment
  belongs_to :discussion
end
