class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image.attach(params[:image].tempfile.path)
        redirect_to user_path
    end
end