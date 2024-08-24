# UsersControllerは、ユーザー関連の処理を管理します。
# frozen_string_literal: true

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  private

  def user_params
    # ストロングパラメータで、名前とメールを受け取ることができるように設定しておく。
    params.require(:user).permit(:name, :email)
  end
end
