class UsersController < ApplicationController
  def create
    User.create(:email => params[:email])
    render :json => {}
  end
end
