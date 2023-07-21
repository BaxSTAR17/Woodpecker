class BranchController < ApplicationController
    def index
        @branchname = params[:branchname]
    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: params[:name], pecks: params[:pecks], user_id: Current.user.id)
        redirect_to branched_path(:branchname => params[:name])
    end

    def invite
        @user = params[:user]
        @branchh = @user.branches.create(name: params[:name], user_id: params[:user_id])
    end

    def new
        @branchname = params[:branchname]
    end

    def destroy

    end
end