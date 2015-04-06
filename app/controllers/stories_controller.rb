class StoriesController < ApplicationController
	before_action :authenticate_user!

	def index
		# @prompt = Prompt.all.order('RAND()').first
		@prompts = Prompt.all
		@stories = Story.all
	end

	def new
		@story = Story.new
		@prompt = Prompt.find(params[:prompt_id])
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

	def story_params
		params.require(:story).permit(:body)
	end

end
