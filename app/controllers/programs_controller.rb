class ProgramsController < ApplicationController

  def index
    @department = Department.find(params[:department_id])
    @department.programs
  end

  def new
    @department = Department.find(params[:department_id])
  end

  def create
    @department = Department.find(params[:department_id])
    @department.programs.create!(params[:program])
    redirect_to programs_path
  end

end
