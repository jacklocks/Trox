# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_query

  def set_query
    @query = Tool.ransack(params[:q])
  end

  protected

  def configure_permitted_parameters
    attributes = %i[firstname lastname phone address address_complement postcode image_url]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
