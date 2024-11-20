# frozen_string_literal: true

# User model represents the users of the application.
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  has_many :questions, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :progresses, dependent: :destroy
  has_many :active_notifications, class_name: 'Notification', foreign_key: 'visitor_id', dependent: :destroy, inverse_of: :visitor
  has_many :passive_notifications, class_name: 'Notification', foreign_key: 'visited_id', dependent: :destroy, inverse_of: :visited

  def liked?(question)
    likes.exists?(question_id: question.id)
  end

  def like(question)
    likes.find_or_create_by(question:)
  end

  def unlike(question)
    likes.find_by(question:)&.destroy
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.name = auth.info.name
      # user.profile = auth.info.profile
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end

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
