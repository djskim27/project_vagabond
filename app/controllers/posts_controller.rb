class PostsController < ApplicationController
 
  def show
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])
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
    @city = City.find(params[:city_id])
    @post = @city.posts.find(params[:id])
   
  end

  def update
    @city = City.find(params[:city_id])
    @post = Post.find(params[:id])
    @post.update post_params 

    redirect_to city_post_path(@city, @post)
  end


  private
  def post_params
    params.require(:post).permit(:title, :content, :city_id)
  end
end
