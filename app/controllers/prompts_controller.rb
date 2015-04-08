class PromptsController < ApplicationController
	def index
		@prompt = Prompt.all
	end

	def show
		@prompt = Prompt.find(params[:id])
		@stories = @prompt.stories
	end

	def new
		@prompt = Prompt.new
	end

	def create
		@prompt = Prompt.new(prompt_params)
		if @prompt.save
			redirect_to stories_path
		else 
			render :new
		end
	end

	def prompt_params
		params.require(:prompt).permit(:name, :category_id)
	end

end
