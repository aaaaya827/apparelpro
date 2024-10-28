# frozen_string_literal: true

# User model represents the users of the application.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  # 新規登録時にメール認証をスキップ
  before_create :skip_confirmation_for_new_user

  # メールアドレスが変更された場合にのみメール認証が必要になる
  def confirmation_required?
    email_changed? && !confirmed?
  end

  private

  # 新規登録時にメール認証をスキップするメソッド
  def skip_confirmation_for_new_user
    skip_confirmation!
  end
end
