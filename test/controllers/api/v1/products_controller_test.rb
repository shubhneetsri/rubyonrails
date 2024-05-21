require "test_helper"

class Api::V1::ProductsControllerTest < ActionDispatch::IntegrationTest

  test "should get show" do
    get 'api/v1/products/show'
    assert_response :success
  end
end
