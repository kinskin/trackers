class KopisController < ActionController::Base
  # require 'kopi.rb'

    def new

      @origins = Origin.all

      @roasts = Roast.all

    end


    def create
      #render plain: params[:kopis].inspect

      @kopi = Kopi.new(kopi_params)

      @kopi.save

      render plain: "IT IS SAVED TO DB"

    end





    private

    def kopi_params
      params.require(:kopis).permit(:name, :origin_id, :roast_id)
    end

end