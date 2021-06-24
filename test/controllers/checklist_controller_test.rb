require "test_helper"

class ChecklistControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get checklist_show_url
    assert_response :success
  end

  test "should get edit" do
    get checklist_edit_url
    assert_response :success
  end

  test "should get index" do
    get checklist_index_url
    assert_response :success
  end

  test "should get update" do
    get checklist_update_url
    assert_response :success
  end

  test "should get destroy" do
    get checklist_destroy_url
    assert_response :success
  end
end
