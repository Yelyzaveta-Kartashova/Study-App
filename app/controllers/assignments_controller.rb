class AssignmentsController < ApplicationController
  before_action :set_user, only: [:create, :update, :edit, :destroy]
  before_action :set_assignment, only: [:update, :edit, :destroy]

  def create
    @assignment = @user.assignments.new(assignment_params)
    @assignment.assigned_by = current_user
    @assignment.assigned_at = Time.current

    begin
    if @assignment.save
      flash[:notice] = "Role assigned successfully"
      redirect_to users_path
    else
      flash[:alert] = "Error assigning role"
      redirect_to users_path
    end

    rescue ActiveRecord::RecordNotUnique
      flash[:alert] = "This user has this role already assigned."
      redirect_to user_path(params[:user_id])
    end
  end

  def edit
    @roles = Role.all
  end

  def update
    if @assignment.update(assignment_params)
      flash[:notice] = "Status updated successfully"
      redirect_to users_path
    else
      flash[:alert] = "Error updating status"
      redirect_to users_path
    end
  end

  def destroy
    if @assignment.destroy
      flash[:notice] = "Assignment deleted successfully."
    else
      flash[:alert] = "Error deleting assignment."
    end
    redirect_to users_path
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_assignment
    @assignment = Assignment.find(params[:id]) 
  end

  def assignment_params
    params.require(:assignment).permit(:role_id, :status)
  end
end
