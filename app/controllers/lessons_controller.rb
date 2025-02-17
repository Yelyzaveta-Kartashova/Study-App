class LessonsController < ApplicationController
  before_action :set_subject
  before_action :set_topic
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]


  def index
    @lessons = @topic.lessons
  end

  def show
    @lesson = Lesson.friendly.find(params[:id])
    @comments = @lesson.comments.includes(:user)
    @comment = @lesson.comments.new 
    @comments = @lesson.comments
  end
  

  def new
    @lesson = @topic.lessons.new
  end
  

  def create
    @lesson = @topic.lessons.build(lesson_params)
    # @lesson.generated_content = params[:generated_content] if params[:generated_content]
    if @lesson.save
      redirect_to subject_topic_lessons_path(@subject, @topic), notice: 'Lesson was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to subject_topic_lesson_path(@subject, @topic, @lesson), notice: 'Lesson was successfully updated.'
    else
      @errors = @lesson.errors if @lesson.errors.any?
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @lesson.destroy
    redirect_to subject_topic_lessons_path(@subject, @topic), notice: 'Lesson was successfully deleted.'
  end

  private

  def set_subject
    @subject = Subject.friendly.find(params[:subject_id])
    redirect_to subjects_path, alert: "Subject not found" if @subject.nil?
  end

  def set_topic
    @topic = @subject.topics.friendly.find(params[:topic_id])
    redirect_to subject_path(@subject), alert: "Topic not found" if @topic.nil?
  end

  def set_lesson
    @lesson = @topic.lessons.friendly.find(params[:id])
    redirect_to subject_topic_path(@subject, @topic), alert: "Lesson not found" if @lesson.nil?
  end

  def lesson_params
    params.require(:lesson).permit(:title, :body, tag_ids: [])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end