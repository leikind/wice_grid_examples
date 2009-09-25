class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery

  # session :session_key => '_rails_root_session_id'
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
      [:custom_filters3_index_path, 'Custom filters (method chains)', ['Compare the filter of "Found in version" generated with :auto and that of "Expected in version" generated with a method chain. Only tasks of one project are shown here, and because versions belong to projects, the filter generated with :auto will have options which will bring zero records.']],
      [:null_values_path, 'Custom filters (null values)', ['Special treatment of "NULL" and "NOT NULL"']],
      [:buttons_path, 'Using custom submit/reset buttons', nil],
      [:styling_index_path, 'Styling the grid', 
        ['grid 1: adding a class to the table with :table_html_attrs',
         'grid 1: adding a class to the header tr with :header_tr_html_attrs',
         'grid 1: adding styles to all TDs of column "Version name" with :td_html_attrs',
         'grid 2: adding  styles dynamically to a TR using g.row_attributes (adding yellow backround to versions in production)',
         'grid 2: adding  styles dynamically to a TD returning a two row value from the column block',
      ]],
      [:adding_rows_path, 'Adding custom rows', nil],
      [:no_records_path, 'A grid without records', 'Three ways to setup a no records view: (1) by a block (2) by a string parameter (3) by a partial'],
      [:erb_mode_index_path, 'ERB mode', ['Setting ERB mode by :erb_mode => true']],
      [:integration_with_forms_path, 'Integration with other forms on page', ['Using helper dump_filter_parameters_as_hidden_fields(grid) to dump all grid parameters as hidden form fields']],
      [:dates_path, 'Date/Datetime helpers', ['Change between standard Rails date/datetime helpers and calendar helpers using :helper_style => :calendar or :helper_style => :standard ']],
      [:all_records_path, 'Removing link "All Records"', ['Hiding the "All Records" link with :allow_showing_all_records => false ']],
      [:csv_export_index_path, 'CSV Export', ['Controller: :enable_export_to_csv, :csv_file_name, export_grid_if_requested', 'View: placing helpers into partials of their own, :in_csv => false, :in_csv => true']],
      [:detached_filters_path, 'Detached filters', ['Column filters defined by :detach_with_id and rendered by <%= grid_filter @tasks_grid, :id_of_the_filter  %>, take note of how the "grid" is used twice']],
    ]
  end

  def setup_ui
    @view_files = nil
    @controller_files = nil
  end

  def init_current_example_map
    # TODO Switch to Ordered Hash
    @current_example_map = @example_map.detect{|m| m[0] == @current_example_key}
    raise "define correct @current_example_key in setup_ui of your example" unless @current_example_map
  end

end
