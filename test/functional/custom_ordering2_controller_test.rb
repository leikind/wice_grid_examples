require 'test_helper'

class CustomOrdering2ControllerTest < ActionController::TestCase
  
  def test_should_get_index
    get :index
    assert_response :success
    # assert_not_nil assigns(:second_level_navigation)
  end

end