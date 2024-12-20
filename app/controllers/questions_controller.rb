class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @comment = Comment.new
    @comments = @question.comments.includes(:user).order(created_at: :desc)
    @like = Like.first_or_create(user: current_user, question: @question)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    @question.user = current_user # 現在のユーザーを設定
    if @question.save
      redirect_to questions_path, notice: '質問が投稿されました！'
    else
      render :new
    end
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to questions_path, notice: '質問が更新されました！' # 更新成功時のリダイレクト
    else
      render :edit # 更新失敗時は編集画面を再表示
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path, notice: '質問が削除されました。'
  end

  private

  def question_params
    params.require(:question).permit(:title, :body)
  end
end
