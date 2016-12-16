class StopsController < ApplicationController
  before_action :set_stop, only: [:show, :update, :destroy]
  skip_before_action :authenticate_user!, except: [:update, :create, :destroy]

  # GET /stops
  def index
    @stops = Stop.all

    render json: @stops
  end

  # GET /stops/1
  def show
    render json: @stop
  end

  # POST /stops
  def create

    # first see if the place already exists
    stop_data = stop_params
    place = Place.where(google_place_id: stop_data[:google_place_id]).first

    unless place
      place = Place.create(
        google_place_id: stop_data[:google_place_id],
        lat: stop_data[:lat],
        lng: stop_data[:lng],
        image: stop_data[:place_image],
        address: stop_data[:place_address],
        name: stop_data[:place_name]
      )
    end

    stop_data.delete(:google_place_id)
    stop_data.delete(:lat)
    stop_data.delete(:lng)
    stop_data.delete(:place_image)
    stop_data.delete(:place_address)
    stop_data.delete(:place_name)

    @stop = Stop.new(Uploader.upload(stop_data))
    @stop.place = place
    @stop.user = current_user

    if @stop.save
      render json: @stop, status: :created, location: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /stops/1
  def update
    if @stop.update(stop_params)
      render json: @stop
    else
      render json: @stop.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stops/1
  def destroy
    if @stop.user == current_user || !@stop.user
      @stop.destroy
    else
      render json: { errors: ["Unauthorized"] }, status: 401
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = Stop.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stop_params
      params.permit(:purpose, :position, :place_name, :place_image, :place_address, :lat, :lng, :google_place_id, :image, :public, :user_id, :place_id, :walk_id, :base64, walk_ids:[])
    end
end
