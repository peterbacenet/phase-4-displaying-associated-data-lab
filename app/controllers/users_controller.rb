class UsersController < ApplicationController
    def show
        selected_user = User.all.find_by(id: params[:id])
        render json: selected_user, include: :items
    end
end
