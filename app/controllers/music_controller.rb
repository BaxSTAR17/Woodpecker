class MusicController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "Music", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to music_path
    end
end