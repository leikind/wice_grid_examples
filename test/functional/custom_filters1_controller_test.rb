require 'test_helper'

class CustomFilters1ControllerTest < ActionController::TestCase
  
  uses_rake_task_to_populate_the_database
  
  def test_should_get_index
    get :index
    assert_response :success
    # assert_not_nil assigns(:second_level_navigation)
  end

end
