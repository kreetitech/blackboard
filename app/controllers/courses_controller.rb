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
    @course = @program.courses.create!(params[:id])
    redirect_to courses_path(:program_id => @program)
  end

  def edit
    @program = Program.find(params[:program_id])
    @course = @program.course.find(params[:id])
  end

  def update
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
    @course.update_attributes(params[:course])
    redirect_to courses_path(:program_id => @program)
  end

  def show
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
  end

  def destroy
    @program = Program.find(params[:program_id])
    @course = @program.courses.find(params[:id])
    @course.destroy
    redirect_to courses_path(:program_id => @program)
  end

end

