class WalksController < ApplicationController
  before_action :set_walk, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:update, :create, :destroy]

  # GET /walks
  def index
    @walks = Walk.all

    render json: @walks
  end

  # GET /walks/1
  def show
    render json: @walk, include: ['stops', 'stops.place']
  end

  # POST /walks
  def create
    @walk = Walk.new(walk_params)
    @walk.user = current_user

    if @walk.save
      render json: @walk, status: :created, location: @walk
    else
      render json: @walk.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /walks/1
  def update
    if @walk.update(walk_params)
      render json: @walk
    else
      render json: @walk.errors, status: :unprocessable_entity
    end
  end

  # DELETE /walks/1
  def destroy
    if @walk.user == current_user || !@walk.user
      @walk.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_walk
      @walk = Walk.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def walk_params
      params.permit(:name, :description, :date, :user, stop_ids:[])
    end
end
