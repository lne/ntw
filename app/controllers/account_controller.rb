class AccountController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

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
      session[:user] = {name: 'DummyUser', role: 'Standard', domain: 'abc.com'}
    end
    #redirect_to 'mails/dashboard'
    redirect_to action: :index, controller: :mails
  end
end
