class MembersController < ApplicationController


 def index
   if params["student"]
     @users = User.where("user_type =?", User::STUDENT)
   else
    @users = User.where("user_type =?", User::FACULTY)
   end
 end

  def new
    @user = User.new
  end

  def create
    User.transaction do
      @user =  User.create!(params[:user])
      @member = @user.create_member(params[:profile])
      @address = @member.addresses.create!(params[:address])
       @member_courses = @member.member_courses.create!(params[:member_courses])
    end
    if params["student"]
       redirect_to members_path(:student => true)
    else
      redirect_to members_path
    end
  end

  def edit
     @member = Member.find(params[:id])

  end

  def update
     @member = Member.find(params[:id])
     @member.update_attributes(params[:member])
    redirect_to members_path

  end

  def show
     @member = Member.find(params[:id])
  end

  def destroy
     @member = Member.find(params[:id])
     @member.destroy
    redirect_to members_path
  end

end
