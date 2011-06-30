class DepartmentsController < ApplicationController

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
  end

  def update
    @department = Department.find(params[:id])
    @department.update_attributes(params[:department])
  end

  def show
     @department = Department.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:id])
    @department.destroy
  end
  
end
