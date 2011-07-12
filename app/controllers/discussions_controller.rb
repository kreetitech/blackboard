class DiscussionsController < ApplicationController


  before_filter :authenticate

  def index
    @assignment = Assignment.find(params[:assisgnment_id])
    @discussions = @assignment.discussions
  end

  def new
    @assignment = Assignment.find(params[:assignment_id])
  end

  def create
    @assignment = Assignment.find(params[:assisgnment_id])
    @assignment.discussions.create!(params[:discussion])

    redirect_to discoussion_path()
  end

  def edit
    @assignment = Assignment.find(params[:assisgnment_id])
    @discussion = @assignment.discussion.find(params[:id])
  end

  def update
    assignment = Assignment.find(params[:assisgnment_id])
    discussion = assignment.discussion.find(params[:id])
    discussion.update_attributes(params[:discussion])
    redirect_to assignment_path()
  end

  def show
    @assignment = Assignment.find(params[:assisgnment_id])
    @session = @assignment.course_session
    @course = @session.course
    @program = @course.program
    @department = @program.department
    redirect_to assignment_path()
  end

  def destroy
    @assignment = Assignment.find(params[:assignment_id])
    @discussion = @assignment.discussions.find(params[:id])
    @discussion.destroy
    redirect_to assignment_path()
  end
   protected

  def authenticate
    current_user && current_user.admin?
  end

  end
