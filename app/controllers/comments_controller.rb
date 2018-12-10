before_action :authenticate_user!
class CommentsController < ApplicationController
    def create_table 
        @place = Place.find(params[:place_id])
        @place.comments.create(comment_params.merge(user: current_user))
        redirect_to place_path(@place)
    end
    

     private

  def comment_params
    params.require(:comment).permit(:comment, :rating)
  end
end
