class Prompt < ActiveRecord::Base
	has_many :stories
	belongs_to :category
end
