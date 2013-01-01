class CommentsController < ApplicationController

	def create
		@post = Post.find_by_slug(params[:post_id])
	
		@comment = @post.comments.create(params[:comment])

		if @comment.valid?
			flash[:notice] = "Commented successfully."
			redirect_to post_path(@post)
		else
			render "posts/show"
		end
	end

end	