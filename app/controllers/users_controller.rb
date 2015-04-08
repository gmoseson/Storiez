class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@stories = @user.stories.order('created_at DESC')
	end
end