class DashboardController < ApplicationController
    def index

    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: "Main Forest", pecks: params[:pecks], user_id: Current.user.id)
        redirect_to dashboard_path
    end
end