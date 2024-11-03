class TopicsController < ApplicationController
  before_action :set_subject
  before_action :set_topic, only: [:edit, :update, :destroy]
  before_action :set_topics, only: [:new, :edit]

  def index
    @topics = @subject.topics
  end

  def new
    @topics = @subject.topics
    if @subject.nil?
      redirect_to subjects_path, alert: "Subject not found"
    else
      @topic = @subject.topics.new
    end
  end

  def create
    @topic = @subject.topics.new(topic_params)
    if @topic.save
      redirect_to [@subject, @topic], notice: 'Topic was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @topic.update(topic_params)
      redirect_to [@subject, @topic], notice: 'Topic was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to subject_topics_path(@subject), notice: 'Topic was successfully destroyed.'
  end

  private

  def set_subject
    @subject = Subject.friendly.find(params[:subject_id])
  end

  def set_topic
    @topic = @subject.topics.friendly.find(params[:id])
  end

  def set_topics
    @topics = @subject.topics
  end

  def topic_params
    params.require(:topic).permit(:name, :description)
  end

end