class ProgramSessionsController < ApplicationController
  def new
  end

  def edit
     @program_session = Program_session.find(params[:id])
  end

  def create
     @program_session = Program_session.create!(params[:program_session])
    redirect_to program_sessions_path
  end

  def index
    @program_session = Program_session.all
  end

  def update
     @program_session = Program_session.find(params[:id])
     @program_session.update_attributes(params[:program_session])
    redirect_to program_sessions_path

  end

  def show
     @program_session =  Program_session.find(params[:id])
  end

  def destroy
    @program_session = Program_session.find(params[:id])
    @program_session.destroy
    redirect_to program_sessions_path
  end
end
