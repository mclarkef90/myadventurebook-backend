class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :show, :destroy]

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.new(user_params)
    if user.save
      render json: user
    else
      render json: {error: 'Error Creating User'}
    end
  end

  def update
    if @user
      @user.update(user_params)
      render json: @user
    else
      render json: {error: 'Error Updating User'}
    end
  end

  def destroy
    if @user
      @user.destroy
      render json: @user
    else
      render json: {error: 'Error Updating User'}
    end
  end

  def show
    if @user
      render json: @user
    else
      render json: {error: 'User Not Found'}
    end
  end

  private

  def set_user
    @user= User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :city, :state)
  end

end
