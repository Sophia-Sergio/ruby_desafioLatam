require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'should not get dashboard' do
    current_user = users(:one)
    sign_in(current_user)
    get pages_dashboard_url
    assert_response :redirect
  end
  test 'should get dashboard' do
    current_user = users(:three)
    sign_in(current_user)
    get pages_dashboard_url
    assert_response :success
  end
end
