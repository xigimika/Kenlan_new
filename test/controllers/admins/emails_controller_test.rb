require 'test_helper'

class Admins::EmailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_emails_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_emails_show_url
    assert_response :success
  end

end
