require 'test_helper'

class RobynControllerTest < ActionController::TestCase
  test "should get spielen" do
    get :spielen
    assert_response :success
  end

  test "should get fernsehen" do
    get :fernsehen
    assert_response :success
  end

  test "should get arbeiten" do
    get :arbeiten
    assert_response :success
  end

  test "should get hey_sagen" do
    get :hey_sagen
    assert_response :success
  end

end
