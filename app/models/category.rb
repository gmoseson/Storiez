class Category < ActiveRecord::Base
	has_many :prompts
	has_many :stories
	has_many :stories, :through => :prompts
end
