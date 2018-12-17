class PicturesController < ApplicationController
       def create
        @place = Place.find(params[:place_id])
        @place.pictures.create(picture_params.merge(user: current_user))
        redirect_to place_path(@place)
    end
    

     private

  def picture_params
    params.require(:picture).permit(:picture)
  end
end
