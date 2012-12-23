class PostsController < ApplicationController

	def index
		@posts = Post.all
	end	

	def show
		@post = Post.where(slug: params[:id]).first
		@comments = @post.comments
		@comment = Comment.new
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new
		@post.title = params[:title]
		@post.url = params[:url]
		@post.save

		redirect_to root_path	
	end
end	
