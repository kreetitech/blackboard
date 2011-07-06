class GradebooksController < ApplicationController
  def index
    
  end

  def new
    @program_session = ProgramSession.find(params[:course_id])
    @course = @program_session.course
  end

  def create
      @program_session = ProgramSession.find(params[:course_id])
      @program_session.gradebook.create!(params[:gradebook])
  end

  def update
    @gradebook = Gradebook.find(params[:id])
    @gradebook.update_attributes(params[:gradebook])
    redirect_to gradebooks_path
    
  end

  def show
    @gradebook = Gradebook.find(params[:id])
  end
