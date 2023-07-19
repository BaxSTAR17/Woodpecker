class SportsController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "Sports", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to sports_path
    end
end