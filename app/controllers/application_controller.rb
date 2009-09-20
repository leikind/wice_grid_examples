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
      [:basics4_index_path, 'Basics: declaring attributes (2)', ['Blockless column definitions (see view code)', 'filters can be turned off with :no_filter => true', 'Changing the behavior of filter with :show_filters']],
      [:basics5_index_path, 'Basics: further on', ['Setting the initial order (see controller code)', 'changing the number of records per page (see controller code)', 'ActiveRecord conditions (see controller code)']],
      [:joining_tables_path, 'Joined tables', ['See :include in the controller','See :model_class in the view']],
      [:two_associations_path, '2 associations to the same table', ['When there are two associations both referring to the same table, ActiveRecord constructs a query where the second join provides an alias for the joined table. To enable WiceGrid to order and filter by columns belonging to different associations  but originating from the same table, set <tt>:table_alias</tt> to this alias (see the view code)']],
      [:many_grids_on_page_index_path, 'More than 1 grid on a page', ['Explicitly setting the name of the grid in the controller']],
      [:custom_ordering_index_path, 'Custom ordering', ['In the first grid default ordering of the Status Name column is overridden by ordering by the length of statuses.name', 'In the second grid the Status Name column is ordered by a different field, statuses.position (usually used by acts_as_list)']],
      [:custom_ordering2_index_path, 'Custom ordering (2)', ['Overriding the default ordering of Status Name by field position from the joined table statuses']],
      
      
      [:custom_filters1_index_path, 'Custom filters (one table)', ['Grid 1: custom_filter defined by a hash', 'Grid 2: custom_filter defined by a array of two element array', 'Grid 3: custom_filter defined by a array of strings (each value is used as both the value and the label)', 'Grid 4: custom_filter defined :auto (produces query SELECT DISTINCT versions.status FROM versions)']],
      [:custom_filters2_index_path, 'Custom filters (joined tables)', ['Joined tables: declaring columns as main_table.foreign_key_id and overriding the ordering with :custom_order']],
      [:custom_filters3_index_path, 'Custom filters (arrays)', ['']],
    ]
  end

  def setup_ui
  end

  def init_current_example_map
    # TODO Switch to Ordered Hash
    @current_example_map = @example_map.detect{|m| m[0] == @current_example_key}
    raise "define correct @current_example_key in setup_ui of your example" unless @current_example_map
  end

end
