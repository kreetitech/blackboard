class AssignmentsController < ApplicationController

  def index
    @course_session = CourseSession.find(params[:course_session_id])
    @assignments = @course_session.assignments
  end

  def new

    @course_session =  CourseSession.find(params[:course_session_id])
  end


  def create
    @course_session = CourseSession.find(params[:course_session_id])
    assignment = @course_session.assignments.new(params[:assignments])
    assignment.member_id = current_user.id
    assignment.save!
    redirect_to assignments_path(:course_session_id => @course_session)
  end


  def edit
    @course_session = CourseSession.find(params[:course_session_id])
    @assignment= @course_session.assignments.find(params[:id])

  end

  def update
    course_session = CourseSession.find(params[:course_session_id])
    assignment = course_session.assignments.find(params[:id])
    assignment.update_attributes(params[:assignment])
    redirect_to course_session_path(course_session,:course_id => course_session.course.id)
  end

  def show
    @course = Course.find(params[:course_id])
    @course_sessions = @course.courseSessions(params[:course_session_id])
    @course_session.assignments
    redirect_to course_session_path(@course_session, :course_id => @course_session.course.id)
  end

  def destroy
    @course_session = CourseSession.find(params[:course_session_id])
    @assignment = @course_session.assignments.find(params[:id])
   # @assignment = Assignment.find(params[:id])
    @assignment.destroy
    redirect_to course_session_path(@course_session,:course_id => @course_session.course.id)
  end
end
