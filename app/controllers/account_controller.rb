class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image.attach(params[:image][:tempfile])
        redirect_to user_path
    end
end