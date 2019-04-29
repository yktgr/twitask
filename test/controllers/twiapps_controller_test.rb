require 'test_helper'

class TwiappsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get twiapps_index_url
    assert_response :success
  end

  test "should get new" do
    get twiapps_new_url
    assert_response :success
  end

end
