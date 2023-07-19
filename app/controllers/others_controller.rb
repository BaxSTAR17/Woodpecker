class OthersController < ApplicationController
    def index
        @viewed_user = params[:vuser]
        @viewed_user_id = params[:vuserid]
    end
end