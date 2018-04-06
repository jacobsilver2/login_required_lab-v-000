class SecretsController < ApplicationController
  before_action :require_login

  def show
    if !current_user
      redirect_to '/sessions/new'
    else
      current_user
    end
  
  end


  private
  def require_login
    return head(:forbidden) unless session.include? :name 
  end
end