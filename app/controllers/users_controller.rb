class UsersController < ApplicationController
  def index
   @users = User.all
  end

  def new
  end

  def create
  end

  def show
    @user = current_user
    @users = User.all
  end

  def edit
  end

  def update
  end

  def destroy
  end
end