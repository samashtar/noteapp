class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end


end
