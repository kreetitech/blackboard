class AssignmentsController < ApplicationController

   def index
    @course = Course.find(params[:course_id => @course_id])
    @courseSessions = @course.courseSessions
  end

  def new
    end
 
 
 
  def create
    @course_session = Course_session.find(params[:course_session_id])
    @course_session.assignments.create!(params[:assignment])

    redirect_to course_session_path(@course_session, :course_id => @course_session.course.id)

  end
 

  
  def edit
     @course = Course.find(params[:course_id])
     @courseSession = @course.courseSessions(params[:course_session_id])
     @assignment= @courseSession.assigments(params[:id])
     @assigment.update_attributes(params[:assignment])
     redirect_to assigments_path
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
