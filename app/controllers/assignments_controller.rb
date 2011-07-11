class AssignmentsController < ApplicationController

   def index
    @course = Course.find(params[:course_id => @course_id])
    @courseSessions = @course.courseSessions
  end

  def new
    end
 
 
 
  def create
   Assignment.create!(params[:assignment])
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
    redirect_to assigments_path
  end

  def delete
    @assignment = Assignment.find(params[:id])
    @assignent.destroy
    redirect_to assignments_path
  end
end
