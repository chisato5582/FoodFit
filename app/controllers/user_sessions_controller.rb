class UserSessionsController < ApplicationController
    skip_before_action :require_login, only: %i[new create]

    def new; end

    def create
        @user = login(params[:email], params[:password])
        if @user
            redirect_back_or_to profile_path, notice: t('.success')
        else
            flash.now[:alert] = t('.fail')
            render :new
        end
    end

    def destroy
        logout
        redirect_to login_path, notice: t('.success')
    end
end
