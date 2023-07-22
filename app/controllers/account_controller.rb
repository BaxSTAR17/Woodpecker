class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image = params[:image]
        redirect_to dashboard_path
    end
end