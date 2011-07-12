class GradebooksController < ApplicationController
  def index

  end

  def new
    @program_session = CourseSession.find(params[:course_session_id])
    @course = @course_session.course
  end

  def create
      @program_session = CourseSession.find(params[:course_session_id])
      @program_session.gradebook.create!(params[:gradebook])
  end

  def update
    @gradebook = Gradebook.find(params[:id])
    @gradebook.update_attributes(params[:gradebook])
    redirect_to gradebooks_path
   end

  def show
    @gradebook = Gradebook.find(params[:id])
  end
