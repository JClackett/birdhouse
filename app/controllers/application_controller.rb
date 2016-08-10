class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?, :verified_log_in

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !!session[:user_id]
  end

  def verify_logged_in
    unless logged_in?
      flash[:notice] = "You must be logged in to view that page"
      redirect_to new_room_user_path(@room)
    end
  end

end