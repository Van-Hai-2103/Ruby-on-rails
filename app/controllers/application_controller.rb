class ApplicationController < ActionController::Base
  # Remove the line below if no authentication is required
  # include Authentication

  allow_browser versions: :modern
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end
end
