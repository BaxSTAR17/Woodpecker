class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image.attach(params[:image])
        @hatdog = 1
        redirect_to user_path
    end
end