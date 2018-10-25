class NotesController < ApplicationController
  def index
    render json: Note.all
  end

  def show
    @note = Note.find(params[:id])
    render json: @note
  end

  def create
      byebug;
    @note = Note.new(note_params)
    @note.save
    render json: @note
  end

  def update
    @note = Note.find(params[:id])
    @note.update(note_params)
    render json: @note
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
  end

private

def note_params
  params.require(:note).permit(:name, :description, :day_id, :type_id)
end

end
