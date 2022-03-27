# frozen_string_literal: true

# :nodoc:
class ApplicationController < ActionController::Base
  before_action :authenticate_account!
  around_action :with_locale

  def with_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
