module LocalizationHelper

  def language_switcher
    langs = ['en', 'nl', 'fr']
    current = session[:lang].to_s
    langs.collect do |lang|
      link_to_unless(current == lang, lang, url_for(:lang => lang))
    end.join(' ')
  end
end