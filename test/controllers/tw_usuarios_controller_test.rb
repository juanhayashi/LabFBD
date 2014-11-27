require 'test_helper'

class TwUsuariosControllerTest < ActionController::TestCase
  setup do
    @tw_usuario = tw_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tw_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tw_usuario" do
    assert_difference('TwUsuario.count') do
      post :create, tw_usuario: { mensaje_id: @tw_usuario.mensaje_id, username: @tw_usuario.username }
    end

    assert_redirected_to tw_usuario_path(assigns(:tw_usuario))
  end

  test "should show tw_usuario" do
    get :show, id: @tw_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tw_usuario
    assert_response :success
  end

  test "should update tw_usuario" do
    patch :update, id: @tw_usuario, tw_usuario: { mensaje_id: @tw_usuario.mensaje_id, username: @tw_usuario.username }
    assert_redirected_to tw_usuario_path(assigns(:tw_usuario))
  end

  test "should destroy tw_usuario" do
    assert_difference('TwUsuario.count', -1) do
      delete :destroy, id: @tw_usuario
    end

    assert_redirected_to tw_usuarios_path
  end
end
