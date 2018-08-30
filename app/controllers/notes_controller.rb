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


def edit
  @note = Note.find(params[:id])
end

def update
  @note = Note.find(params[:id])

  if @note.update(notes_params)
    redirect_to notes_path
  else
    render :edit
  end
end



private

def notes_params
  params.require(:note).permit(:title, :body)
end


end
