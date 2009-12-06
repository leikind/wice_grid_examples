module LocalizationHelper

  def language_switcher
    langs = ['en', 'nl', 'fr', 'is']
    current = session[:lang].to_s
    langs.collect do |lang|
      link_to_unless(current == lang, lang, url_for(:lang => lang))
    end.join(' ')
  end
  
  if self.respond_to?(:safe_helper)
    safe_helper :language_switcher
  end
  
end