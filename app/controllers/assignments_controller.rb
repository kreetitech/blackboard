class AssignmentsController < ApplicationController

   def index
    @course_session = CourseSession.find(params[:coursesession_id])
    @assignments = @courseSessions.assignment
  end

  def new

    @course_session =  CourseSession.find(params[:course_session_id])
  end


  def create
    @course_session = CourseSession.find(params[:course_session_id])
    assignment = @course_session.assignments.new(params[:assignments])
    assignment.member_id = current_user.id
    assignment.save!
    redirect_to assignments_path(@course_sessio)

  end


  def edit

    @courseSession = CourseSession.find(params[:course_session_id])
    @assignment= @courseSession.assigments(params[:id])
  end

  def update
    coursesession = CourseSession.find(params[:coursesession_id])
    assignment = course_session.assignments.find(params[:id])
    assignment.update_attributes(params[:assignment])
    redirect_to course_session_path(course_session,:course_id => course_session.course.id)

  end
  def show
    @course = Course.find(params[:course_id])
    @courseSessions = @course.courseSessions(params[:course_session_id])
    @courseSession.assignments
    redirect_to course_session_path(@course_session, :course_id => @course_session.course.id)
  end

  def delete
    @assignment = Assignment.find(params[:id])
    @assignent.destroy
    redirect_to course_session_path(@course_session, :course_id => @course_session.course.id)
  end
end
