class UserController < ApplicationController
	before_action :need_login,:only => :user_center

	def need_login
		if !current_user
			redirect_to :login
		end
	end


	def index
		@user = User.all
	end

	def regest
	end

	def login
	end
	
	def create
		qwe = params[:username]
		password = params[:password]
		User.create(:username => qwe,:password => password)
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

	def delete
		user_id = params[:id]
		User.find_by_id(user_id).destroy
		redirect_to :root
	end

	def change
		@user = User.find_by_id(params[:id])
	end

	def update
		user = User.find_by_id(params[:id])
		user.username = params[:username]
		user.password = params[:password]
		user.save
		redirect_to :root
	end

	def user_center
		@user = User.find_by_id(session[:user_id])
	end
end
