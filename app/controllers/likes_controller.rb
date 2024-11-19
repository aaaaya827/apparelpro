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

    current_user.like(@question)
    render_like_button(@question)
  end

  def destroy
    @like = current_user.likes.find_by(id: params[:id])
    return redirect_to questions_path, alert: 'Like not found.' unless @like

    current_user.unlike(@like.question)
    @question = @like.question
    render_like_button(@question)
  end

  private

  def render_like_button(question)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("like-button-for-question-#{question.id}", partial: 'likes/like_button', locals: { question: })
      end
      format.html { redirect_to question } # HTMLの場合のリダイレクトも追加
    end
  end
end
