class QuestionsController < ApplicationController
  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to questions_path, notice: '質問が投稿されました！'
    else
      render :new
    end
  end

  def index
    @questions = Question.all
  end

  def show
      @question = Question.find(params[:id])
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end