require 'test_helper'

class ReportControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get report_index_url
    assert_response :success
  end

  test "should get new" do
    get report_new_url
    assert_response :success
  end

  test "should get create" do
    get report_create_url
    assert_response :success
  end

  test "should get delete" do
    get report_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get report_destroy_url
    assert_response :success
  end

end
