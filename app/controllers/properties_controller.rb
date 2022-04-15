class PropertiesController < ApplicationController
  before_action :require_user_logged_in
  before_action :correct_user, only: [:destroy, :update]
  
  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      flash[:success] = '物件を登録しました。'
      redirect_to root_url
    else
      flash.now[:danger] = '物件の登録に失敗しました。'
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    if @property.update(property_params)
      flash[:success] = '物件情報を編集しました。'
      redirect_to @property
    else
      flash.now[:danger] = '物件情報の編集に失敗しました。'
      render :edit
    end
  end

  def destroy
    @property.destroy
    flash[:success] = '物件を削除しました。'
    redirect_to root_url
  end
  
  private
  
  def property_params
    params.require(:property).permit(:name, :price, :address, :company)
  end
  
  def correct_user
    @property = current_user.properties.find_by(id: params[:id])
    unless @property
      redirect_to root_url
    end
  end
end
