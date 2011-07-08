class MembersController < ApplicationController

  def index
    @member = Member.all
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
    redirect_to members_path
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
     @member =  @member.
  end

  def destroy
     @member = Member.find(params[:id])
     @member.destroy
    redirect_to members_path
  end

end
end
