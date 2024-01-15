class Admin::ChoicesController < Admin::BaseController
  def new
    @choice = Choice.new
  end

  def edit
  end

  def create
  end

  def update
    if @choice.update(choice_params)
      redirect_to admin_choice_path, success: '問題選択肢を更新しました'
    else
      flash.now[:danger] = '選択肢の変更に失敗しました'
      render :edit
    end
  end

  def destroy
    @choice.destroy!
    redirect_to admin_choices_path, success: '選択肢を削除しました'
  end

  private

  def choice_params
    params.require(:choice).permit(:choice, :correct)
  end
end
