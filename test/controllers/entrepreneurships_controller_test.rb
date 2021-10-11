require "test_helper"

class EntrepreneurshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @entrepreneurship = entrepreneurships(:one)
  end

  test "should get index" do
    get entrepreneurships_url
    assert_response :success
  end

  test "should get new" do
    get new_entrepreneurship_url
    assert_response :success
  end

  test "should create entrepreneurship" do
    assert_difference('Entrepreneurship.count') do
      post entrepreneurships_url, params: { entrepreneurship: { email: @entrepreneurship.email, last_name: @entrepreneurship.last_name, name: @entrepreneurship.name, number: @entrepreneurship.number, password: @entrepreneurship.password, pyme_name: @entrepreneurship.pyme_name, street: @entrepreneurship.street } }
    end

    assert_redirected_to entrepreneurship_url(Entrepreneurship.last)
  end

  test "should show entrepreneurship" do
    get entrepreneurship_url(@entrepreneurship)
    assert_response :success
  end

  test "should get edit" do
    get edit_entrepreneurship_url(@entrepreneurship)
    assert_response :success
  end

  test "should update entrepreneurship" do
    patch entrepreneurship_url(@entrepreneurship), params: { entrepreneurship: { email: @entrepreneurship.email, last_name: @entrepreneurship.last_name, name: @entrepreneurship.name, number: @entrepreneurship.number, password: @entrepreneurship.password, pyme_name: @entrepreneurship.pyme_name, street: @entrepreneurship.street } }
    assert_redirected_to entrepreneurship_url(@entrepreneurship)
  end

  test "should destroy entrepreneurship" do
    assert_difference('Entrepreneurship.count', -1) do
      delete entrepreneurship_url(@entrepreneurship)
    end

    assert_redirected_to entrepreneurships_url
  end
end
