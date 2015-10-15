class PostsController < ApplicationController
  def index
    @posts = Post.all
    puts "VALUE OF @posts VARIABLE IN INDEX CONTROLLER: #{@posts.inspect}"
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def edit
  end
end
