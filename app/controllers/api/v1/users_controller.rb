class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :show, :destroy]

  def index
    users= User.all
    render json: users
  end

  def create
    user= User.new(user_params)
    if user.save
      render json: user, status: :accepted
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
  end

  def update
    if user
      user.update(user_params)
      render json: user, status: :accepted
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def destroy
    if user
      user.destroy
      render json: user, status: :accepted
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  def show
    if user
      render json: user, status: :accepted
    else
      render json: {errors: user.errors.full_messages}, status: :unprocessible_entity
    end
  end

  private

  def set_user
    user= User.find_by(id: params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :city, :state)
  end

end
