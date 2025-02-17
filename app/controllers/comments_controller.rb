class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_subject
  before_action :set_topic
  before_action :set_lesson

  def create
    @comment = @lesson.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: [
            turbo_stream.append("lesson_#{@lesson.id}_comments", 
                                partial: "comments/comment", 
                                locals: { comment: @comment, user: current_user }), 
            turbo_stream.replace("comment_form", 
                                 partial: "comments/form", 
                                 locals: { comment: Comment.new, user: current_user }) 
          ]
        end
        format.html { redirect_to subject_topic_lesson_path(@subject, @topic, @lesson) }
      end
    else
      redirect_to subject_topic_lesson_path(@subject, @topic, @lesson), alert: 'Error adding comment.'
    end
  end


  def destroy
    @comment = @lesson.comments.find(params[:id])
    @comment.user = current_user
    if @comment.user == current_user || current_user.admin?
      @comment.destroy
      redirect_to subject_topic_lesson_path(@subject, @topic, @lesson), notice: "Comment deleted successfully."
    else
      redirect_to subject_topic_lesson_path(@subject, @topic, @lesson), alert: "You are not authorized to delete this comment."
    end
  end

  private

  def set_subject
    @subject = Subject.friendly.find(params[:subject_id])
  end

  def set_topic
    @topic = @subject.topics.friendly.find(params[:topic_id])
  end

  def set_lesson
    @lesson = @topic.lessons.friendly.find(params[:lesson_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end

end