class Api::V1::AdventuresController < ApplicationController
  before_action :set_adventure, only: [:update, :show, :destroy]


  def index
    if params[:user_id]
      user= User.find_by(id: params[:user_id])
      adventures= user.adventures.all
      render json: adventures
    else
      adventures= Adventure.all
      render json: adventures
    end
  end

  def create
    #only available as nested route under user
    user= User.find_by(id: params[:user_id])
    adventure= user.adventure.build(adventure_params)
    if adventure.save
        render json: adventure
      else
        render json: {error: 'Error Creating Adventure'}
    end
  end

  def update
    if @adventure
      adventure.update(adventure)
      render json: @adventure
    else
      render json: {error: 'Error Updating Adventure'}
    end
  end

  def destroy
    if @adventure
      adventure.destroy
      render json: @adventure
    else
      render json: {error: 'Error Deleting Adventure'}
    end
  end

  def show
    if @adventure
      render json: @adventure
    else
      render json: {error: 'Adventure Not Found'}
    end
  end

  private

  def set_adventure
    @adventure= Adventure.find_by(id: params[:id])
  end

  def adventure_params
    params.require(:adventure).permit(:title, :description, :website_url, :image_url, :likes, :complete, :user_id)
  end


end
