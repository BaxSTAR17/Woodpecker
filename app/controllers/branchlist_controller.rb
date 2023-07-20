class BranchlistController < ApplicationController
    def index

    end

    def create
        @branch = Current.user.branches.create(name: params[:name], user_id: Current.user.id)
        redirect_to branchlist_path
    end

    def destroy

    end
end