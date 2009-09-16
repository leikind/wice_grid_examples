class ApplicationController < ActionController::Base
  helper :all 
  protect_from_forgery 

  session :session_key => '_rails_root_session_id'
  layout 'common'

  before_filter :setup_ui

  protected

  def setup_ui
  end
end


