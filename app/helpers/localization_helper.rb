module LocalizationHelper

  def language_switcher
    langs = ['en', 'nl', 'fr', 'is']
    current = session[:lang].to_s
    langs.collect do |lang|
      link_to_unless(current == lang, lang, url_for(:lang => lang))
    end.join(' ').html_safe_if_needed
  end
  
  
end