class SearchController < ApplicationController
	def index
		if params[:query].start_with('#')
			query = params[:query].gsub('#', '')
			@posts = Post.joins(:has_tags).where(has_tags: { name: query})
		else
			@posts = Post.where("description like ?", "%#{params[:query"]}%")
		end
	end
end
