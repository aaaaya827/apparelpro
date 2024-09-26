class CommentsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @comment = @question.comments.new(comment_params)
    @comment.user = current_user

    if @comment.save
      respond_to do |format|
        format.turbo_stream # Turbo Streamでの非同期更新
        format.html { redirect_to @question }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace("comment-form", partial: 'comments/form', locals: { comment: @comment }) }
        format.html { render 'questions/show' }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @question = @comment.question
    @comment.destroy

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("comment-#{@comment.id}") }
      format.html { redirect_to @question }
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
