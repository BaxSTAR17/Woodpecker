class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image.attach(params[:image])
        redirect_to dashboard_path
    end
end