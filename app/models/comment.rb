class Comment < ActiveRecord::Base
attr_accessible :discussion_id,:assignment_id,:member_id
 validates_presence_of :message

end
