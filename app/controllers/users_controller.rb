class UsersController < ApplicationController
  def sign_up
  	@user = User.new
  end

  def sign_in
  end

  def thank_you
  end
end
