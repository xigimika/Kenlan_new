require 'test_helper'

class FreepagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get freepages_index_url
    assert_response :success
  end

  test "should get show" do
    get freepages_show_url
    assert_response :success
  end

  test "should get new" do
    get freepages_new_url
    assert_response :success
  end

  test "should get edit" do
    get freepages_edit_url
    assert_response :success
  end

end
