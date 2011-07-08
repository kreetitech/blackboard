class CourseSessionsController < ApplicationController
  def index
     @course = Course.find(params[:course_id])
     @courseSessions = @course.courseSessions
  end

  def new
     @course = Course.find(params[:course_id])
  end

  def edit
     @courseSession = Course_session.find(params[:id])
  end

  def create
      @course_session = Course_session.create!(params[:course_session])
      @course = Course.find(params[:course_id])
      redirect_to course_path(@course, :program_id => @course.program.id)
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
    @course =  Course.find(params[:department_id])
    @courseSession = @course.courseSessions.find(params[:id])
    
  end

  def destroy
     @course_session = Course_session.find(params[:id])
     @course_session = Course_session.destroy
    redirect_to program_sessions_path
  end
end
