class AssignmentsController < ApplicationController

   def index
    @course = Course.find(params[:course_id])
    @courseSessions = @course.courseSessions
  end

  def new
     @course = Course.find(params[:id])
  end
  

end
