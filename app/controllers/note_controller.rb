class NoteController < ApplicationController
  before_action :need_login,:only => :create

  def need_login
    if !current_user
      redirect_to :login
    end
  end

  
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
  	Note.create(:title => title,:content => content,:user_id => session[:user_id])
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

  def show
    @note = Note.find(params[:id])
    @comment = @note.comments
  end
end
