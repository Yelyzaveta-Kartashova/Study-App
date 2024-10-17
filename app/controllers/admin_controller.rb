class AdminController < ApplicationController
  before_action :authenticate_admin!

  def index
    @roles = Role.all
    @users = User.includes(assignments: [:role]).all
  end

  private

  def authenticate_admin!
    redirect_to root_path, alert: 'Not authorized!' unless current_user.admin?
  end
end