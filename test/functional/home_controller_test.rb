require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get some_page" do
    get :some_page
    assert_response :success
  end

end
