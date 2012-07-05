require 'test_helper'

class ExemplarsControllerTest < ActionController::TestCase
  setup do
    @exemplar = exemplars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exemplars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exemplar" do
    assert_difference('Exemplar.count') do
      post :create, exemplar: @exemplar.attributes
    end

    assert_redirected_to exemplar_path(assigns(:exemplar))
  end

  test "should show exemplar" do
    get :show, id: @exemplar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exemplar
    assert_response :success
  end

  test "should update exemplar" do
    put :update, id: @exemplar, exemplar: @exemplar.attributes
    assert_redirected_to exemplar_path(assigns(:exemplar))
  end

  test "should destroy exemplar" do
    assert_difference('Exemplar.count', -1) do
      delete :destroy, id: @exemplar
    end

    assert_redirected_to exemplars_path
  end
end
