class UsersController < ApplicationController
  def create
    User.create(:email => params[:email])
    render :json => {}
  end

  def index
    @users = User.all()
  end

  def destroy
    User.destroy(params[:id])
    redirect_to :action => :index
  end
end
