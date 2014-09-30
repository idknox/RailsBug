class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
  @user = User.new
  end

  def create
    User.create(username: params[:user][:username], password: params[:user][:password], admin: false)
    redirect_to  new
  end

end