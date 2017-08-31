class UsersController < ApplicationController
  def show
    @user = current_user
    @user_posts = @user.posts.paginate(page: params[:page], per_page: 10).order('created_at DESC')
    @cities = City.all
  end
end
