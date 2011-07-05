class Address < ActiveRecord::Base
  belongs_to :member
#validator
validates_presence_of :address
validates_presence_of :zipcode
validates_presence_of :city
validates_presence_of :state
validates_presence_of :country
validates_presence_of :phone_resi
validates_presence_of :phone_mob
end
