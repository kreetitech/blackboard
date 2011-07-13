class DepartmentsController < ApplicationController
  before_filter :authenticate, :except => [:index, :show]

  def index
    @departments = Department.paginate :page => params[:page], :order => 'created_at DESC'
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
    # @program = @department.programs.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
    redirect_to departments_path
  end

  protected

  def authenticate
    current_user && current_user.admin?
  end

end
