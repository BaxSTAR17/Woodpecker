class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image = params[:image]
        puts Current.user.image
        redirect_to user_path
    end
end