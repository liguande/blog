class NoteController < ApplicationController
  def index
  	@note = Note.all.reverse
  end

  def new
  end

  def change
  	@note = Note.find_by_id(params[:id])
  end

  def create
  	title = params[:title]
  	content = params[:content]
  	Note.create(:title => title,:content => content)
  	redirect_to :note_index
  end

  def update
  	note = Note.find_by_id(params[:id])
  	title = params[:title]
  	content = params[:content]
  	note.title = title
  	note.content = content
  	note.save
  	redirect_to :note_index
  end

  def delete
  	Note.find_by_id(params[:id]).destroy
  	redirect_to :note_index
  end
end
