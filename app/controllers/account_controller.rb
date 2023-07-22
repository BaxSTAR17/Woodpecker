class AccountController < ApplicationController
    def index

    end

    def create
        Current.user.image.attach(params[:image])
        redirect_to user_path
    end

    private

    def params_image
        params.require(:user).permit(:image)
    end
end