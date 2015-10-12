class Api::RoomsController < ApplicationController
    before_action :authenticate_user!

    before_action do
      request.format = :json
    end

    def show
      @room = Room.find params[:id]
    end
end
