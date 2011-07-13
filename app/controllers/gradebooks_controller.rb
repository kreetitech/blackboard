class GradebooksController < ApplicationController
  def index
    @course_session = CourseSession.find(params[:course_session_id])
    @assignments = @course_session.gradebooks

  end

  def new
    @course_session = CourseSession.find(params[:course_session_id])
    @course = @course_session.courses
  end

  def create
      @course_session = CourseSession.find(params[:course_session_id])
      gradebook= @course_session.gradebooks.new(params[:gradebook])
      gradebook.member_id = current_user.id
      gradebook.save!
      redirect_to gradebooks_path(:course_session_id => @course_session) 
          
  end


  def update
    @gradebook = Gradebook.find(params[:id])
    @gradebook.update_attributes(params[:gradebook])
    redirect_to gradebooks_path
   end

  def show
    @gradebook = Gradebook.find(params[:id])
  end
end
