# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
    super do |resource| # 'resource' is a new user
      if params[:user][:avatar].present?
        resource.avatar.attach(params[:user][:avatar])
      end

      if resource.persisted?
        Assignment.create!(
          user: resource, 
          role: Role.find_by(name: 'Student'), 
          assigned_by: User.find_by(email: 'system@example.com')
        )
      end
    end
  end

  def edit
    @user = current_user
  end

  def update
    # Check if a new avatar is uploaded and attach it
    if params[:user][:avatar].present?
      current_user.avatar.attach(params[:user][:avatar])
    end
  
    # Check if the remove avatar checkbox is checked
    if params[:user][:remove_avatar] == "1"
      current_user.avatar.purge # Remove the avatar if the checkbox is checked
    end
  
    # Update user attributes excluding avatar-related parameters
    if current_user.update(user_params.except(:avatar, :remove_avatar))
      redirect_to root_path, notice: 'User was successfully updated.' 
    else
      @errors = current_user.errors if current_user.errors.any?
      render :edit, status: :unprocessable_entity
    end
  end
  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private

  def user_params
    params.require(:user).permit(:name, :avatar, :remove_avatar) 
  end

end