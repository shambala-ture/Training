class PostsController < ApplicationController
  http_basic_authenticate_with name: "shambala-ture", password: "shambalat123", only: [:index, :show]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path, :notice => "Your post was saved"
    else
      render "new"
    end
  end

  def edit
     @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to posts_path, :notice => "Your post has been updated"
    else
      render "edit"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
   
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
  end
end