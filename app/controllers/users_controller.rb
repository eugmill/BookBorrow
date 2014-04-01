class UsersController < ApplicationController
    # before_action :login_required, :only => [:edit, :update, :index, :show]
  
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @library = @user.library.page(params[:page]).per(10)
    @user_book = UserBook.new
  end
  
    #For a user, remove the book from their library
  def remove_book
    @user = User.find(params[:id])
  end
end
