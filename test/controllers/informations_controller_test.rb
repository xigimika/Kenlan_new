require 'test_helper'

class InformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get informations_index_url
    assert_response :success
  end

  test "should get new" do
    get informations_new_url
    assert_response :success
  end

  test "should get note" do
    get informations_note_url
    assert_response :success
  end

end
