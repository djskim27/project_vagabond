class PostsController < ApplicationController
 
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
    @post = @city.posts.create!(post_params)
    

    redirect_to city_path(@city)
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
    params.require(:post).permit(:title, :content, :city_id)
  end
end
