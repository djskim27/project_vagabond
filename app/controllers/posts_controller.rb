class PostsController < ApplicationController
  #before_action :set_post, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource only: [:edit, :update, :destroy]
  def show
    @city = City.friendly.find(params[:city_id])
    @post = @city.posts.find(params[:id])
  end

  def new
    @city = City.friendly.find(params[:city_id])
    @post = Post.new
  end

  def create
    @city = City.friendly.find(params[:city_id])
   
    @post = @city.posts.new(post_params)
    if @post.valid?
      @post.save
      redirect_to city_path(@city)
    elsif @post.title.length > 200
      flash.alert = "You have exceeded the 200 character limit for post title"
      redirect_to new_city_post_path
    else
      flash.alert = "You cannot have a blank title or blank content for your post"
      redirect_to new_city_post_path
    end

    
  end

  def edit
    @city = City.friendly.find(params[:city_id])
    @post = @city.posts.find(params[:id])
   
  end

  def update
    @city = City.friendly.find(params[:city_id])
    @post = Post.find(params[:id])
    @post.update post_params 

    redirect_to city_post_path(@city, @post)
  end

  def destroy
    @city = City.friendly.find(params[:city_id])
    @post = @city.posts.find(params[:id])
    @post.destroy

    redirect_to city_path(@city)
  end


  private
  def post_params
    post = params.require(:post).permit(:title, :content)
    user_id = { user_id: current_user.id}
    post.merge(user_id)

  end
end
