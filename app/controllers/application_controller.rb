# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :ensure_user_profile_complete, if: :user_signed_in?

  def ensure_user_profile_complete
    if !current_user.user_profile_complete? && !profile_completion_controller?
      redirect_to complete_user_profile_path, alert: 'Please complete your profile to access all features.'
    end
  end

  def profile_completion_controller?
    devise_controller? || %w[students professionals].include?(controller_name)
  end
end
