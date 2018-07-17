class UserController < ApplicationController
	def index
		@user = User.all
		@name = session[:user_id]
	end
	def regest
		@user = User.new
	end
	def login
	end
	def create
		username = params[:username]
		password = params[:password]
		User.create(:username => username,:password => password)
		redirect_to :login
	end
	def login_session
		username = params[:username]
		password = params[:password]
		@user = User.find_by_username(username)
		if @user && @user.password == password
			session[:user_id] = @user.id
			redirect_to :root
		else
			redirect_to :login
		end
	end
	def logout
		session[:user_id] = nil
		redirect_to :root
	end
end
