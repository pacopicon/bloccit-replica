class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "VALUE OF @posts VARIABLE IN INDEX CONTROLLER: #{@posts.inspect}"
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :body))
    if @post.save
      flash[:notice] = "The post was saved."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post.  Please try again!"
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(params.require(:post).permit(:title, :body))
      flash[:notice] = "The post was updated."
      redirect_to @post
    else
      flash[:error] = "There was an error saving the post.  Please try again!"
      render :edit
    end
  end

end