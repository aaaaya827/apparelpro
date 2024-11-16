# frozen_string_literal: true

class Manual < ApplicationRecord
  has_many :progresses, dependent: :destroy
end
