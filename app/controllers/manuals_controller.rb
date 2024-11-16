# frozen_string_literal: true

# ManualsController handles actions related to manuals management.
class ManualsController < ApplicationController
  def index
    @manuals = Manual.all
    @categories = Manual.select(:category).distinct.order(:category)
    @user_progress = calculate_user_progress
  end

  def show
    # @manuals = Manual.where(category: params[:category])
    @manuals = Manual.where('category LIKE ?', "#{params[:category]}%")
  end

  def complete
    @manual = Manual.find(params[:id])
    @progress = Progress.find_or_initialize_by(user: current_user, manual: @manual)
    @progress.update(completed: true, progress: 100)

    session[:progress_value] = calculate_user_progress

    redirect_to manuals_path, notice: "マニュアルを完了しました。"
  end

  private

  # 進捗率を計算するメソッド
  def calculate_user_progress
    completed_manuals = Progress.where(user: current_user, completed: true).count
    total_manuals = Manual.count
    total_manuals.positive? ? (completed_manuals.to_f / total_manuals * 100).round : 0
  end
end
