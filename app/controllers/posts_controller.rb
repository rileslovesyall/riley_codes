class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :must_be_logged_in, except: [:index, :show]

  def index
    @posts = Post.all
  end

  def show; end

  def new
    if !@current_user
      flash[:error] = "Silly rabbit, Trix are for kids."
      redirect_to root_path
    else
      @post = Post.new
    end
  end

  def create
    Post.create(
        title: post_params[:title],
        body: post_params[:body]
      )
    redirect_to posts_path
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
  
end
