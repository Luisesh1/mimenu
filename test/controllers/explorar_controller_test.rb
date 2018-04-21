require 'test_helper'

class ExplorarControllerTest < ActionController::TestCase
  test "should get platillos" do
    get :platillos
    assert_response :success
  end

  test "should get restaurantes" do
    get :restaurantes
    assert_response :success
  end

  test "should get busqueda" do
    get :busqueda
    assert_response :success
  end

end
