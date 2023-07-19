class OthersController < ApplicationController
    def index
        @viewed_user = params[:vuser]
    end
end