class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.friendly.find params[:id]
    @city_posts = @city.posts.paginate(page: params[:page], per_page: 10).order('created_at DESC') 
    @user = current_user
    
  end
end
