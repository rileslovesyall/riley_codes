class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user, :is_riley?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def must_be_logged_in
    if !@current_user
      flash[:error] = "Silly rabbit, Trix are for kids."
      redirect_to root_path
    end
  end

  def must_be_owner
    if @current_user != User.find_by(uid: "13241167", username: "Riley Spicer")
      flash[:error] = "Silly rabbit, Trix are for kids."
      redirect_to root_path
    end
  end

  def is_riley?
    if @current_user == User.find_by(uid: "13241167", username: "Riley Spicer")
      return true
    else
      return false
    end
  end

end
