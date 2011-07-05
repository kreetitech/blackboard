class ProgramsController < ApplicationController

  def index
    @department = Department.find(params[:department_id])
    @programs = @department.programs
       redirect_to department_path(@department)

  end

  def new
    @department = Department.find(params[:department_id])
  end

  def create
    @department = Department.find(params[:department_id])
    @department.programs.create!(params[:program])
    redirect_to department_path(@department)

  end

 def edit
    @department = Department.find(params[:department_id])
    @program = @department.programs.find(params[:id])
  end

  def update
    @department = Department.find(params[:department_id])
    @program = @department.programs.find(params[:id])
    @program.update_attributes(params[:program])
    redirect_to department_path(@department)

  end

  def show
    @department = Department.find(params[:department_id])
    @program = @department.programs.find(params[:id])
    @courses = @program.courses
  end

  def destroy
    @department = Department.find(params[:department_id])
    @program = @department.programs.find(params[:id])
    @program.destroy
    redirect_to department_path(@department)

  end

end
