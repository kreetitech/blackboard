class Comment < ActiveRecord::Base
attr_accessible :discussion_id,:assignment_id,:member_id
 validates_presence_of :message
cattr_reader :per_page
  @@per_page = 10

end
