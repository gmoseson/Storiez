class StoriesController < ApplicationController
	before_action :authenticate_user!

	def index
		@prompt = Prompt.all
		@stories = Story.all.order('created_at DESC')
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
    	@story = current_user.stories.find(params[:id])
    	@photo = @story.photo
 	end

 	def update
	     @story = Story.find(params[:id])
	    	if @story.update_attributes(story_params)
	     	 redirect_to stories_path
	   		 else 
	    	  render :edit
	   		 end
 	 end

 	 def show
 	 	@story = Story.find(params[:id])
 	 	@prompt = @story.prompt.name
 	 end

 	 def destroy
       @story = Story.find(params[:id])
       @story.delete
       redirect_to stories_path
   end


	def story_params
		params.require(:story).permit(:body, :prompt_id, :photo)
	end

end
