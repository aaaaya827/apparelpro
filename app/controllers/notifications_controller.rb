class NotificationsController < ApplicationController
  def index
    @notifications = current_user.passive_notifications.page(params[:page]).per(20)
    @notifications.where(checked: false).find_each do |notification|
      notification.update(checked: true)
    end
  end
end
