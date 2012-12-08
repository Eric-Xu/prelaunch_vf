class UsersController < ApplicationController
  def sign_up
  	@user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      render 'thank_you'
    else
      render 'sign_up'
    end
  end

  def sign_in
  end

  def thank_you
  end
end
