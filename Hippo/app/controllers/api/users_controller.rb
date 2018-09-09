class Api::UsersController < ApplicationController
  skip_before_action :verify_authentication, only: :create
  before_action :set_user, only: %i[show update destroy]
  def index
    @users = User.all

    render json: @users
  end

  def follow
    @current_user.follow(@user)
    @follow = Follow.find_by(follower: @current_user, followable: @user)
  end

  def unfollow
    @current_user.stop_following(@user)
  end

  def show
    render json: @user
  end

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if current_user == @user
      @user.destroy
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
