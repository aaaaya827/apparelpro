class Progress < ApplicationRecord
  belongs_to :manual
  belongs_to :user

  validates :progress, inclusion: { in: 0..100 }
end
