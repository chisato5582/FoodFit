class UserSessionsController < ApplicationController

    def new; end

    def create
        @user = login(params[:email], password[password])
        if @user
            redirect_back_or_to root_path, notice: "ログインしました"
        else
            flash.now[:alert] = "ログインに失敗しました"
            render :new
        end
    end

    def destroy
        logout
        redirect_to(login_path, notice: "ログアウトしました")
    end
end
