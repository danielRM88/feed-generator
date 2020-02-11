class BooksController < ApplicationController
  before_action :set_user

  def index
    @books = Feed.new(@user).retrieve.limit(30)
  end

private
  def set_user
    @user = User.find(params[:user_id])
  end
end
