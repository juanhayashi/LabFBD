require 'test_helper'

class TusuariosControllerTest < ActionController::TestCase
  setup do
    @tusuario = tusuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tusuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tusuario" do
    assert_difference('Tusuario.count') do
      post :create, tusuario: { mensaje_id: @tusuario.mensaje_id, username: @tusuario.username }
    end

    assert_redirected_to tusuario_path(assigns(:tusuario))
  end

  test "should show tusuario" do
    get :show, id: @tusuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tusuario
    assert_response :success
  end

  test "should update tusuario" do
    patch :update, id: @tusuario, tusuario: { mensaje_id: @tusuario.mensaje_id, username: @tusuario.username }
    assert_redirected_to tusuario_path(assigns(:tusuario))
  end

  test "should destroy tusuario" do
    assert_difference('Tusuario.count', -1) do
      delete :destroy, id: @tusuario
    end

    assert_redirected_to tusuarios_path
  end
end
