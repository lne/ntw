class AccountController < ApplicationController
  # GET /login
  def login
    render layout: 'login'
  end

  # POST /login
  def logon
    #TODO: modify dummy logic
    if params[:password].blank?
      # error
    end
    case params[:email]
    when 'site'
      session[:user] = {name: 'SiteAdmin', role: 'SiteAdmin'}
    when 'admin@abc.com'
      session[:user] = {name: 'admin', role: 'DomainAdmin', domain: 'abc.com'}
    else
      session[:user] = {name: 'DummyUser', role: 'StandardUser', domain: 'abc.com'}
    end
    @account = session[:user]
    #redirect_to 'mails/dashboard'
    #redirect_to action: :index, controller: :mails
    redirect_to action: :index, controller: :users
  end

  # GET /logout
  def logout
    session[:user] = nil
    redirect_to root_path
  end
end
