require "test_helper"

class OnboardingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get onboarding_index_url
    assert_response :success
  end

  test "should get show" do
    get onboarding_show_url
    assert_response :success
  end

  test "should get edit" do
    get onboarding_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get onboarding_destroy_url
    assert_response :success
  end
end
