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

  def destroy
    Note.find(params[:id]).destroy
    redirect_to notes_path
  end


  def create #need a freaking create button...?
    @note = Note.new(notes_params)

    if @note.save
      redirect_to note_path(@note.id)
    else
      render :new
    end
  end


private

  def notes_params
  params.require(:note).permit(:title, :body)
  end

end
