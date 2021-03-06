class AttractionsController < ApplicationController
  before_action :find_attraction, only: [:show, :edit, :update, :destroy]

    def index
        @attractions = Attraction.all
    end

    def create
      @attraction = Attraction.new(attraction_params)
        if @attraction.save
            redirect_to attraction_path(@attraction)
        else
            redirect_to attractions_path
        end
    end

    def new
        @attraction = Attraction.new
    end

    def edit

    end


  private

    def attraction_params
        params.require(:attraction).permit(:name, :min_height, :happiness, :nausea_rating, :tickets)
    end

    def find_attraction
        @attraction = Attraction.find(params[:id])
    end

end
