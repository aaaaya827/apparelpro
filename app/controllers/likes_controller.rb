class LikesController < ApplicationController
  def create
    @question = Question.find_by(id: params[:question_id])
    if @question.nil?
      respond_to do |format|
        format.html { redirect_to questions_path, alert: 'Question not found.' }
        format.turbo_stream { head :no_content }
      end
      return
    end

    if current_user.like(@question)
      render_like_button(@question)
    else
      respond_to do |format|
        format.html { redirect_to @question, alert: 'Failed to like the question.' }
        format.turbo_stream { head :no_content }
      end
    end
  end

  def destroy
    @like = current_user.likes.find_by(id: params[:id])
    if @like
      current_user.unlike(@like.question)
      @question = @like.question
      render_like_button(@question)
    else
      respond_to do |format|
        format.html { redirect_to questions_path, alert: 'Like not found.' }
        format.turbo_stream { head :no_content }
      end
    end
  end

  private

  def render_like_button(question)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("like-button-for-question-#{question.id}", partial: 'likes/likes', locals: { question: })
      end
      format.html { redirect_to question } # HTMLの場合のリダイレクトも追加
    end
  end
end
