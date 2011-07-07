class CoursesController < ApplicationController

before_filter :authenticate

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

    redirect_to program_path(@program, :department_id => @program.department.id)

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
    @department = @program.department
    @course = @program.courses.find(params[:id])
    @course_sessions = @course.course_sessions

  end

  def destroy
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
    @course.destroy
    redirect_to program_path(@program, :department_id => @program.department.id)

  end

 protected

  def authenticate
    current_user && current_user.admin?
  end

end

