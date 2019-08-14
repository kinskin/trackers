class KopisController < ActionController::Base
    def index
      @kopis = Kopi.all
    end

    def new

      @origins = Origin.all

      @roasts = Roast.all

    end

    def create
      #render plain: params[:kopis].inspect

      @kopi = Kopi.new(kopi_params)

      @kopi.save
      redirect_to @kopi

    end

    def show
      @kopi = Kopi.find(params[:id])
    end

    def edit
      @kopi = Kopi.find(params[:id])
      @origins = Origin.all
      @roasts = Roast.all
    end

    def update
      @kopi = Kopi.find(params[:id])
      @kopi.update(kopi_params)

      redirect_to @kopi
    end

    def destroy
      @kopi = Kopi.find(params[:id])
      @kopi.destroy

      redirect_to kopis_path
    end



    private

      def kopi_params
        params.require(:kopis).permit(:name, :origin_id, :roast_id)
      end

end