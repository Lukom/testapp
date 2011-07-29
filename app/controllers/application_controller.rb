class ApplicationController < ActionController::Base
  protect_from_forgery

  def url_options
    {:locale => I18n.locale, :host=> request.host}
  end
  
  def set_locale
    if params[:locale].blank? || I18n.available_locales.map(&:to_s).include?(params[:locale].to_s)
      session[:locale] = params[:locale].presence || I18n.default_locale
      I18n.locale = session[:locale]
    end
  end
end
