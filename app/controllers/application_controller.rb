class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate, except: [:login, :logon, :logout]

  def authenticate
    unless session[:user]
      redirect_to action: login, controller: :account
    end
  end
end
