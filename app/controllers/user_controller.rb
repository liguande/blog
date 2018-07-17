class UserController < ApplicationController
	def index
		
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
			redirect_to :root
		else
			redirect_to :login
		end
	end
end
