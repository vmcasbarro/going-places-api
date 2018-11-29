class StopsController < ProtectedController
  before_action :set_trip
  before_action :set_stop, only: [:show, :update, :destroy]

  # GET /stops
  def index
    @stops = @trip.stops.all.order(:date)

    render json: @stops
  end

  # GET /stops/1
  def show
    render json: @stop
  end

  # POST /stops
  def create
    @stop = @trip.stops.build(stop_params)

    if @stop.save
      render json: @stop, status: :created
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
    @stop.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stop
      @stop = @trip.stops.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stop_params
      params.require(:stop).permit(:location, :date)
    end

    # only allow a stop to created within a user's trip
    def set_trip
      @trip = current_user.trips.find(params[:trip_id])
    end
end
