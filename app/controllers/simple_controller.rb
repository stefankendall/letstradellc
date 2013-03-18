class SimpleController < ApplicationController
  def index
  end

  def emails
    @users = User.all()
  end
end
