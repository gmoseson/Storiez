class StoriesController < ApplicationController
	before_action :authenticate_user!

	def index
		@prompt = Prompt.all
		@stories = Story.all
		@user = User.all
	end

	def new
		@prompt = Prompt.all.order('RANDOM()').first
		@story = Story.new(prompt: @prompt)
	end

	def create
		@story = Story.new(story_params)
		@story.user = current_user

		if @story.save
			redirect_to stories_path
		else
			render :new
		end
	end

 	def edit
    	@photo = current_user.stories.find(params[:id])
 	end

	def update
	end

	def story_params
		params.require(:story).permit(:body, :prompt_id, :photo)
	end

end
