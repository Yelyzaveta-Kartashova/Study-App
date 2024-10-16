class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :load_roles, only: [:index, :new, :edit, :create, :update]
  before_action :authenticate_admin!

  def index
    @users = User.includes(assignments: [:role]).all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "User updated successfully"
      redirect_to users_path
    else
      flash[:alert] = "Error updating user"
      render :edit
    end
  end

  def destroy
    @user.destroy
    flash[:notice] = "User deleted successfully"
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def load_roles
    @roles = Role.all
  end

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, role_ids: [])
  end
  
  def authenticate_admin!
    redirect_to root_path, alert: 'Not authorized!' unless current_user.admin?
  end

end

