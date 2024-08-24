# 全てのモデルに共通する機能を提供する基底クラスです。
# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class
end
