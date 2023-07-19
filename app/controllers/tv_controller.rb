class TvController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "TV", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to tv_path
    end
end