class TopicsController < ApplicationController

  def destroy
    @topic = Topic.find(params[:id])
    authorize @topic

    if @topic.destroy
      flash[:notice] = "\"#{@topic.name}\" has successfully been deleted."
      redirect_to topics_path
    else
      flash[:error] = "There was an error deleting this topic. Please try again!"
      render :show
    end
  end

  def index
    @topics = Topic.visible_to(current_user).paginate(page: params[:page])
    authorize @topics
  end

  def new
    @topic = Topic.new
    authorize @topic
  end

  def show
    @topic = Topic.find(params[:id])
    authorize @topic
    @posts = @topic.posts.includes(:user).includes(:comments).paginate(page: params[:page])

  end

  def edit
    @topic = Topic.find(params[:id])
    authorize @topic
  end

  def create
    @topic = Topic.new(params.require(:topic).permit(:name, :description, :public))
    authorize @topic
    if @topic.save
      flash[:notice] = "Success!"
      redirect_to @topic
    else
      flash[:error] = "There was an error saving the topic. Please try again!"
      render :new
    end
  end

  def update
    @topic = Topic.find(params[:id])
    authorize @topic
    if @topic.update_attributes(params.require(:topic).permit(:name, :description, :public))
      flash[:notice] = "the topic was updated."
      redirect_to @topic
    else
      flash[:error] = "there was an error saving the topic.  Please try again!"
      render :edit
    end
  end

end
