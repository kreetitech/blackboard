class CoursesController < ApplicationController

  def index
    @program = Program.find(params[:program_id])
    @courses = @program.courses
  end

  def new
    @program = Program.find(params[:program_id])
  end

  def create
    @program = Program.find(params[:program_id])
    @program.courses.create!(params[:course])
    redirect_to program_path( @program, :department_id => @program.department)
  end

  def edit
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
  end

  def update
    program = Program.find(params[:program_id])
    course = program.courses.find(params[:id])
    course.update_attributes(params[:course])
    redirect_to program_path(program, :department_id => program.department.id)
  end

  def show
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
  end

  def destroy
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
    @course.destroy
    redirect_to program_path(@program, :department_id => @program.department.id)
  end

end

