class ProfilesController < ApplicationController
    before_action :set_user, only: %i[edit update show]

    def show; end

    def edit; end

    def update
        if @user.update(user_params)
            redirect_to profile_path, success: "登録内容を変更しました"
        else
            flash.now['danger'] = "変更に失敗しました"
            render :edit
        end
    end

    private

    def set_user
        @user = User.find(current_user.id)
    end

    def user_params
        params.require(:user).permit(:name, :email)
    end
end
