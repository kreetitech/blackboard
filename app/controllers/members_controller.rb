class MembersController < ApplicationController

  def index
    @member = Member.all
  end

  def new
  end

  def create
     @member =  Member.create!(params[:department])
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
