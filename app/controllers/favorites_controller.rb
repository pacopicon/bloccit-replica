class FavoritesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @favorite = current_user.favorites.build(post: @post)
    @favorite = @post.favorites.new(params[:id])
    @favorite.user = current_user
    authorize @favorite
    if @favorite.save
      redirect_to [@post.topic, @post], notice: "Success!"
    else
      redirect_to [@post.topic, @post], notice: "There was an error favoriting.  Please try again!"
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @favorite = current_user.favorites.find(params[:id])
    @favorite = @post.favorites.find(params[:id])
    authorize @favorite
    if @favorite.destroy
      redirect_to [@post.topic, @post], notice: "This post has been unfavorited."
    else
      redirect_to [@post.topic, @post], notice: "There was an error unfavoriting.  Please try again!"
    end
  end

end
