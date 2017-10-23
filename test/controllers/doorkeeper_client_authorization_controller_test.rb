require 'test_helper'

class DoorkeeperClientAuthorizationControllerTest < ActionDispatch::IntegrationTest
  test "should get access_oauth_client_apps" do
    get doorkeeper_client_authorization_access_oauth_client_apps_url
    assert_response :success
  end

end
