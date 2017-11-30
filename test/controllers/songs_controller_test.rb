require 'test_helper'

class SongsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get songs_show_url
    assert_response :success
  end

  test "should get edit" do
    get songs_edit_url
    assert_response :success
  end

end
