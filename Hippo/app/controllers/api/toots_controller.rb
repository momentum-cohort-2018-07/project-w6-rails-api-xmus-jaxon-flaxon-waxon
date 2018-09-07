class Api::TootsController < ApplicationController
  before_action :set_toot, only: [:show, :update, :destroy]

  def index
    @toots = Toot.all
    render json: @toots
  end

  def show
    render json: @toot
  end

  def create
    @toot = Toot.new(toot_params)

    if @toot.save
      render json: @toot, status: :created, location: @toot
    else
      render json: @toot.errors, status: :unprocessable_entity
    end
  end

  def update
    if @toot.update(toot_params)
      render json: @toot
    else
      render json: @toot.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @toot.destroy
  end

  private

  def set_toot
    @toot = Toot.find(params[:id])
  end

  def toot_params
    params.require(:toot).permit(:body, :user_id)
  end

end
