class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
    #button to new.html.erb
  end
end

private

def notes_params
  params.require(:note).permit(:title, :body)
end
