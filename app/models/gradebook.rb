class Gradebook < ActiveRecord::Base
belongs_to :member
belongs_to :program_session
end
