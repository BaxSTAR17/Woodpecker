class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image = params[:image]
        redirect_to user_path
    end
end