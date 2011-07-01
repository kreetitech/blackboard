class ProgramsController < ApplicationController

  def index
    @department = Department.find(params[:department_id])
    @programs = @department.programs
  end

  def new
    @department = Department.find(params[:department_id])
  end

  def create
    @department = Department.find(params[:department_id])
    @department.programs.create!(params[:program])
    redirect_to programs_path(:department_id => @department)
  end

 def edit
    @department = Department.find(params[:department_id])
    @program = @department.program.find(params[:id])
  end

  def update
    @department = Department.find(params[:department_id])
    @program = @department.program.find(params[:id])
    @program.update_attributes(params[:program])
    redirect_to programs_path(:department_id => @department)
  end

  def show
     @department = Department.find(params[:department_id])
     @program = @department.programs.find(params[:id])
  end

  def destroy
    @department = Department.find(params[:department_id])
    @program = @department.programs.find(params[:id])
    @program.destroy
    redirect_to programs_path(:department_id => @department)
  end

end
