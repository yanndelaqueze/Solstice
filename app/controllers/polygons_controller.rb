class PolygonsController < ApplicationController

  def show
    @polygon = Polygon.last
  end

  def index
    @polygons = Polygon.all
  end

  def new
    @polygon = Polygon.new
  end

  def create
    Polygon.destroy_all
    @polygon = Polygon.new(polygon_params)

    if @polygon.save
      redirect_to polygons_path, notice: 'Polygon was successfully created.'
    else
      render :new
    end
  end

  private

  def polygon_params
    params.require(:polygon).permit(:name, :coordinates)
  end

end
