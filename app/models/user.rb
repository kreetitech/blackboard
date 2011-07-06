class User < ActiveRecord::Base
  has_one :member
  has_many :addresses
  ADMIN = 0
  STUDENT = 1
  FACULTY = 2
  # Include default devise modules. Others available are:

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable,  :confirmable, :lockable and :timeoutable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :title, :user_type


end
