class DepartmentsController < ApplicationController
  before_filter :authenticate

  def index
    @departments = Department.all
  end

  def new
  end

  def create
    @department = Department.create!(params[:department])
    redirect_to departments_path
  end

  def edit
    @department = Department.find(params[:id])
    @title = "Edit"
  end

  def update
    @department = Department.find(params[:id])
    @department.update_attributes(params[:department])
    redirect_to departments_path
  end

  def show
    @department = Department.find(params[:id])
    @program = @department.programs 
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to departments_path
  end

  protected
  def authenticate
     return true if (current_user && current_user.admin)
	if true 
	redirect_to :controller => 'Department', :action => "new"
	redirect_to :controller => 'Department', :action => "edit"
	redirect_to :controller => 'Department', :action => "update"
	redirect_to :controller => 'Department', :action => "destroy"
         else
          access_denied
          
 	
  end


  
end
