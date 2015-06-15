class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :set_account
  before_filter :authenticate, except: [:login, :logon, :logout]

  before_filter :set_timezone

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

  def set_timezone
    p cookies
    p cookies[:timezone]
    timezone = Time.find_zone(cookies[:timezone])
    # client timezone
    p timezone
    # server time
    p Time.now
    # client time
    p Time.now.in_time_zone(timezone)
    puts "00000000000000000000000000000000"
  end
end
