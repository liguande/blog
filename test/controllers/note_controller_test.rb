require 'test_helper'

class NoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get note_index_url
    assert_response :success
  end

  test "should get new" do
    get note_new_url
    assert_response :success
  end

  test "should get change" do
    get note_change_url
    assert_response :success
  end

end
