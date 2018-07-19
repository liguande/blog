class CommentController < ApplicationController
	def create
		c = params[:content]
		note_id = params[:note_id]
		Comment.create(:content => c,:user_id => session[:user_id],:note_id => note_id)
		redirect_to note_show_path(note_id)
	end

	def delete
		Comment.find(params[:comment_id]).destroy
		redirect_to note_show_path(params[:note_id])
	end
end
