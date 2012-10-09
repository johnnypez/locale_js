class LocaleJs::LocaleController < ApplicationController
  
  # remember to add the locales route
  # map.connect '/locale/:action.:format', :controller => :locale
  # then add this to your layout <%= javascript_include_tag  "/locale/#{I18n.locale}.js" %>
  # your locale will be available in a javascript global: I18n
  
  rescue_from AbstractController::ActionNotFound, :with => :action_mising
  
  # this method searches the locales dir and then defines methods on this class for each locale
  Dir.glob(File.join(Rails.root,'config/locales/*.yml')).map do |file|
    locale = File.basename(file).match(/(.+)\.yml/)[1]
    define_method(locale) do
      generate_locale(locale)
    end
  end
  
  private
  def generate_locale(locale)
    expires_in(30.days)
    I18n.locale = locale
    # initialize i18n
    I18n.translate :hello
    @locale = I18n.backend.send(:translations)[I18n.locale]
    render :template => 'locale/i18n'
  end
  
  def action_missing(action)
    logger.debug("No config/locales/#{action}.yml exists! Reverting to #{I18n.default_locale}")
    generate_locale(I18n.default_locale)
  end

end