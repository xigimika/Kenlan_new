require 'test_helper'

class Admins::FreepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_freepages_index_url
    assert_response :success
  end

end
