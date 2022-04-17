class LogsController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    @property = Property.find(params[:property_id])
    @log = @property.logs.build(log_params)
    if @log.save
      flash[:success] = '活動ログを投稿しました。'
      redirect_to @property
    else
      @logs = @property.logs
      flash.now[:danger] = '活動ログの投稿に失敗しました。'
      render 'properties/show'
    end
  end

  private

  def log_params
    params.require(:log).permit(:content)
  end
end
