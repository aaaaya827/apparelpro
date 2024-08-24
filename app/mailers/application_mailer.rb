# アプリケーション全体のメール送信に関する基本機能を提供します。
# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
