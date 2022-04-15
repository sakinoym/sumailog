class ToppagesController < ApplicationController
  def index
    if logged_in?
      @pagy, @properties = pagy(current_user.properties.order(id: :desc))
    end
  end
end
