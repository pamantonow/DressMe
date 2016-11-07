class UsersController < ApplicationController

	def new
		@user = User.new
		render :'users/new'
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to user_path
		else
			@errors = @user.errors.full_message
			render :'users/new'
		end
	end


	private

	def user_params
		params.require(:User).permit(:first_name,:last_name,:username,:email,:password)
	end
end
