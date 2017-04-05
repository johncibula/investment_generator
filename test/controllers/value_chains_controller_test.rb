require 'test_helper'

class ValueChainsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get value_chains_show_url
    assert_response :success
  end

end
