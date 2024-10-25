# frozen_string_literal: true

# ApplicationMailer is the base mailer class from which all mailers inherit.
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
