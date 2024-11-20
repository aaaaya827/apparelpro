class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :question
  has_many :notifications, dependent: :destroy

  validates :body, presence: true

  def comment_content
    body
  end
end
