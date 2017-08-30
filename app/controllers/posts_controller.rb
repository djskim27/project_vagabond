class PostsController < ApplicationController
 
  def show
    @post = Post.find(params[:id])
  end

  def new
    @city = City.find(params[:city_id])
    @post = Post.new
  end

  def create
    @city = City.find(params[:city_id])
    @post = @city.posts.create!(post_params)

    redirect_to city_path(@city)
  end

  def edit
    @post = Post.find(params[:id])
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :city_id)
  end
end
