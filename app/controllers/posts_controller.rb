class PostsController < ApplicationController

	before_action :auth, :admin?
	skip_before_action :auth, :admin?, only: [:index]
	layout :choose_layout
	
	
	def new
	  @post = Post.new
	end

	def create

	  @post = Post.new(post_params)
	  @post.user_id = current_user.id
	  @post.save
	  redirect_to posts_path
	end

	def index
	  @posts = Post.all 
	end

	def show
	  @post = Post.find_by_id(params[:id])
	end 

	def edit
		@post = Post.find(params[:id])
	end 

	def update
	  @post = Post.find(params[:id])
	  @post.update(post_params)
	  redirect_to post_path(@post)
	end

	private

	def post_params
	  params.require(:post).permit(:title, :content, :user_id, :pic, :youtube_id, :pic_url)
	end

	def choose_layout
		if current_user
			"application"
		else
		 "guest"
		end
	end

end

