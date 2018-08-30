class NotesController < ApplicationController
  def index
    @Notes = note.all
  end

    def show
      @note = Note.find(params[:id])
    end

  def new
    @note = Note.new
  end
end

private

def notes_params
  params.require(:note).permit(:title, :body)
end
