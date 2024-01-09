class ProfilesController < ApplicationController
  before_action :set_user, only: %i[edit update show index]

  def show
    @nutrition_data = Question.nutrition_data(current_user)
    @compound_data = Question.compound_data(current_user)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: t('.success')
    else
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
