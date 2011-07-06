class CourseSessionsController < ApplicationController
  def new
  end

  def edit
     @course_session = Course_session.find(params[:id])
  end

  def create
      @course_session = Course_session.create!(params[:program_session])
    redirect_to program_sessions_path
  end

  def index
     @course_session = Course_session.all
  end

  def update
      @course_session = Course_session.find(params[:id])
      @course_session = Course_session.update_attributes(params[:program_session])
    redirect_to program_sessions_path

  end

  def show
      @course_session = Course_session.find(params[:id])
  end

  def destroy
     @course_session = Course_session.find(params[:id])
     @course_session = Course_session.destroy
    redirect_to program_sessions_path
  end
end
