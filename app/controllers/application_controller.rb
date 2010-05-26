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
      [:basics1_index_path, 'Basics: most simple grid', 'basics'],
      [:basics2_index_path, 'Basics: naming columns', 'basics'],
      [:upper_pagination_panel_index_path, 'Basics: showing two pagination panels', nil],
      [:basics3_index_path, 'Basics: declaring attributes', 'basics'],
      [:basics4_index_path, 'Basics: declaring attributes (2)', 'basics'],
      [:basics5_index_path, 'Basics: initial conditions and ordering', 'initialordering'],
      [:basics6_index_path, 'Basics: :no_filter and :allow_ordering', 'initialordering'],
      [:joining_tables_path, 'Joined tables', 'querieswithjointables'],
      [:two_associations_path, '2 associations to the same table', 'joinedassociationsreferringtothesametable'],
      [:many_grids_on_page_index_path, 'More than 1 grid on a page', 'morethanonegridonapage'],
      [:custom_ordering_index_path, 'Custom ordering', 'customordering'],
      [:custom_ordering2_index_path, 'Custom ordering (2)', 'customordering'],
      [:custom_filters1_index_path, 'Custom filters (one table)', 'customdropdownfilters'],
      [:custom_filters2_index_path, 'Custom filters (joined tables)', 'customdropdownfilters'],
      [:custom_filters3_index_path, 'Custom filters (method chains)', 'customdropdownfilters'],
      [:custom_filters4_index_path, 'Custom filters: disallowing multiple selection', 'multipleselection'],
      [:null_values_path, 'Custom filters (null values)', 'customdropdownfilters'],
      [:action_column_index_path, 'Action column', 'actioncolumn'],
      [:buttons_path, 'Using custom submit/reset buttons', 'submit/resetbuttons'],
      [:styling_index_path, 'Styling the grid', 'stylingthegrid'],
      [:adding_rows_path, 'Adding custom rows', 'addingrowstothegrid'],
      [:no_records_path, 'A grid without records', 'renderingagridwithoutrecords'],
      [:erb_mode_index_path, 'ERB mode', 'erbmode'],
      [:integration_with_forms_path, 'Integration with other forms', 'integrationofthegridwithotherformsonpage'],
      [:dates_path, 'Date/Datetime helpers', 'javascriptcalendarfordateanddatetimefilters.'],
      [:all_records_path, 'Removing link "All Records"', 'showallrecords'],
      [:csv_export_index_path, 'CSV Export', 'csvexport'],
      [:detached_filters_path, 'Detached filters', 'detachedfilters'],

      [:integration_with_application_view_index_path, 'View helpers to access records on the current page and all pages', 'integrationwiththeapplication'],
      [:resultset_processings_path, 'Callback to process records of the current page', []],
      [:integration_with_application_index_path, 'Callback to process records throughout all pages on demand', 'accessingselectedrecordsfromthecontroller'],
      
      [:localization_index_path, 'Localization', 'localization'],
      [:custom_filter_params_path, 'Generating custom filter parameters', 'localization'],
      [:saved_queries_path, 'Saved queries: simple example', ['http://leikind.org/apis/wice_grid/files/SAVED_QUERIES_HOWTO_rdoc.html']]

      
    ]
  end

  def setup_ui
    @view_files = nil
    @controller_files = nil
  end

  def init_current_example_map
    # TODO Switch to Ordered Hash
    @current_example_map = @example_map.detect{|m| m[0] == @current_example_key}
    # raise "define correct @current_example_key in setup_ui of your example" unless @current_example_map
  end

end
