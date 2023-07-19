class GamingController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "Gaming", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to gaming_path
    end
end