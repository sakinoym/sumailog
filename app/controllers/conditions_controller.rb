class ConditionsController < ApplicationController
  before_action :require_user_logged_in
  
  def new
    @condition = current_user.build_condition
  end

  def create
    @condition = current_user.build_condition(condition_params)
    if @condition.save
      flash[:success] = '希望条件を登録しました。'
      redirect_to root_url
    else
      flash[:danger] = '希望条件の登録に失敗しました。'
      render :new
    end
  end

  def edit
    @condition = Condition.find(params[:id])
    unless @condition
      redirect_to root_url
    end
  end
  
  def update
    @condition = Condition.find(params[:id])
    if @condition.update(condition_params)
      flash[:success] = '希望条件を編集しました。'
      redirect_to root_url
    else
      flash.now[:danger] = '希望条件の編集に失敗しました。'
      render :edit
    end
  end
  
  private
  
  def condition_params
    params.require(:condition).permit(:budget, :area, :walking_distans_from_station, :exclusive_area, :floor_plan, :age_of_a_building, :others, :detail_1, :detail_2, :detail_3)
  end
end
