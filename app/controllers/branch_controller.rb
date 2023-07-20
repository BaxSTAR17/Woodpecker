class BranchController < ApplicationController
    def index
        @branchname = params[:branchname]
    end

    def create
        @peck = Current.user.pecks.create(post: params[:post], tree: @branchname, pecks: params[:pecks], user_id: Current.user.id)
        @branchname = @branchname
        redirect_to branch_path
    end

    def invite
        @branchh = @user.branches.create(name: params[:branchname], user_id: params[:user_id])
    end

    def destroy

    end
end