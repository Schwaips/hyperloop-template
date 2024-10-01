# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit::Authorization

  before_action :authenticate_user!
  after_action :verify_pundit_authorization, unless: -> { active_admin_controller? || devise_controller? }

  def verify_pundit_authorization
    if action_name == 'index'
      verify_policy_scoped
    else
      verify_authorized
    end
  end

  def active_admin_controller?
    is_a?(ActiveAdmin::BaseController)
  end
end
