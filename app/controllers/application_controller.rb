# frozen_string_literal: true

# ApplicationController is the base controller class that all other controllers inherit from.
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def after_sign_in_path_for(_resource)
    manuals_path
  end
end
