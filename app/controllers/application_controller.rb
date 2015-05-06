class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_account
  before_filter :authenticate, except: [:login, :logon, :logout]

  def authenticate
    logger.info @account.inspect
    unless @account
      redirect_to login_path
      return false
    end
  end

  def set_account
    @account = session[:user]
  end
end
