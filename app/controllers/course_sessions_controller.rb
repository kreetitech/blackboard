class CourseSessionsController < ApplicationController
  def new
  end

  def edit
     @course_session = Course_session.find(params[:id])
  end

  def create
      @course_session = Course_session.create!(params[:course_session])
      @course = Course.find(params[:course_id])
      @course.course_sessions.create!(params[:course])
      redirect_to program_path(@course, :program_id => @course.program.id, :department_id => @program.department_id)
  end
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
    @course =  Course.find(params[:department_id])
    @courseSession = @course.courseSessions.find(params[:id])
    @courseSessions = @course.courseSession
  end

  def destroy
     @course_session = Course_session.find(params[:id])
     @course_session = Course_session.destroy
    redirect_to program_sessions_path
  end
end
