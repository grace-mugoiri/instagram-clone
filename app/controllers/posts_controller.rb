class PostsController < ApplicationController

	def create
		Post.create(post_params)
		redirect_to root_path
	end

	def show
		@post = Post.find(params[:id])
		@posts = current_user.posts.order(created_at: :desc)
	end

	def destroy
		@post = current_user.posts.find(params[:id])
		@post.destroy

		redirect_to user_path(current_user)
	end

	private

	def post_params
		params.require(:post).permit(:descrption, :image, :user_id)
	end

end
