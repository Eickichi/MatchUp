class GamesController < ApplicationController
    #before_action :authenticate_user

    def index 
        @game = Game.all
    end
    
    def show
        @game = Game.find(params[:id])
    end
    
    private
    
    #def games_params
        #params.permit(:sender_id, :recipient_id)
    #end
end
