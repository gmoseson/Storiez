class PromptsController < ApplicationController
	def index
		@prompt = Prompt.all
	end

	def show
		@prompt = Prompt.find(params[:id])
		@stories = @prompt.stories
	end

end
