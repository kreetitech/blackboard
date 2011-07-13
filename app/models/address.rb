class Address < ActiveRecord::Base

  belongs_to :member

  cattr_reader :per_page
  @@per_page = 10


end
