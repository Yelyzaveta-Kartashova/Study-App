class SubjectsController < ApplicationController
  before_action :set_subject, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
  end

  def show
  end

  def new
    if (current_user.admin? || current_user.teacher?)
      @subject = Subject.new
    else
      redirect_to subjects_path, alert: 'You are not authorized to create subjects.'
    end
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      redirect_to @subject, notice: 'Subject was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      redirect_to @subject, notice: 'Subject was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @subject.destroy
    redirect_to subjects_url, notice: 'Subject was successfully destroyed.'
  end

  private

  def set_user
    @user = current_user
  end

  def set_subject
    @subject = Subject.friendly.find(params[:id])
  end

  def subject_params
    params.require(:subject).permit(:name, :image_url)
  end
end
