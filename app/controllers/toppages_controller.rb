class ToppagesController < ApplicationController
  def index
    if logged_in?
      @condition = current_user.condition
      @pagy, @properties = pagy(current_user.properties.order(id: :desc))
    end
  end
end
