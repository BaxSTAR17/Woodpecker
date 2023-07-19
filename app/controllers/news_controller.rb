class NewsController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "News", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to news_path
    end
end