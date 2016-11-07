class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.user_id
			redirect_to user_path
		else
			flash[:notice] = "your credentials don't match"
			render :'sessions/new'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to '/'
	end

end
