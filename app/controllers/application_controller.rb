class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  session :session_key => '_rails_root_session_id'
  layout 'common'

  before_filter :init_example_map
  before_filter :setup_ui
  before_filter :init_current_example_map

  protected


  def init_example_map
    @example_map = [
      [:basics1_index_path, 'Basics: most simple grid', []],
      [:basics2_index_path, 'Basics: naming columns', []],
      [:basics3_index_path, 'Basics: declaring attributes', ['a column with a declared database field (attribute) acquires ordering links and filters']],
      [:basics4_index_path, 'Basics: declaring attributes (2)', ['Blockless column definitions (see view code)', 'filters can be turned off with :no_filter => true']],
      [:basics5_index_path, 'Basics: further on', ['Setting the initial order (see controller code)', 'changing the number of records per page (see controller code)', 'ActiveRecord conditions (see controller code)']],
      [:joining_tables_path, 'Joined tables', ['See :include in the controller','See :model_class in the view']]
    ]
  end

  def setup_ui
  end

  def init_current_example_map
    @current_example_map = @example_map.detect{|m| m[0] == @current_example_key}
    raise "define correct @current_example_key in setup_ui of your example" unless @current_example_map
  end

end
