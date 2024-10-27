class LikesController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    current_user.like(@question)
    render_like_button(@question)
  end

  def destroy
    @like = current_user.likes.find_by(id: params[:id])
    if @like
      current_user.unlike(@like.question)
      @question = @like.question

      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.replace("like-button-for-question-#{@question.id}", partial: 'likes/likes', locals: { question: @question })
        end
        format.html { redirect_to @question } # HTMLリクエストの場合のリダイレクト
      end
    end
  end

  private

  def render_like_button(question)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("like-button-for-question-#{question.id}", partial: 'likes/likes', locals: { question: })
      end
    end
  end
end
