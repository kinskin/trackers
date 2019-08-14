class OriginsController < ActionController::Base

  def new
  end

  def create
    @origin = Origin.new(origin_params)

    @origin.save
    render plain: "IT SAVED IN DB"
  end

  def show
    @origin = Origin.find(params[:id])
  end

private

  def origin_params
    params.require(:origins).permit(:location, :phone_number)
  end

end