class CourseSessionsController < ApplicationController
  def index
     @course = Course.find(params[:course_id])
     @courseSessions = @course.courseSessions
  end

  def new
     @course = Course.find(params[:course_id])
  end

  def edit
     @course = Course.find(params[:course_id])
     @course_session = @course.course_sessions.find(params[:id])
  end

  def create
      @course = Course.find(params[:course_id])
      @course.course_sessions.create!(params[:course_session])
      redirect_to course_path(@course, :program_id => @course.program.id)
  end


  def update
      course = Course.find(params[:course_id])
      course_session = course.course_sessions.find(params[:id])
      course_session.update_attributes(params[:course_session])
      redirect_to course_path(course, :program_id => course.program.id)

  end

  def show
    @course = Course.find(params[:course_id])
    @program = @course.program
    @department = @program.department
    @course_session = @course.course_sessions.find(params[:id])
    @gradebooks = @course_session.gradebooks
    @assignments = @course_session.assignments.paginate :page => params[:page], :order => 'created_at DESC'
  end

  def destroy
    @course = Course.find(params[:course_id])
    @course_session = @course.course_sessions.find(params[:id])
    @course_session.destroy
    redirect_to course_path(@course, :program_id => @course.program.id)
  end
end
