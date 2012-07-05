require 'test_helper'

class ProdutoControllerTest < ActionController::TestCase
  test "should get id:integer," do
    get :id:integer,
    assert_response :success
  end

  test "should get titulo:String," do
    get :titulo:String,
    assert_response :success
  end

  test "should get descricao:text," do
    get :descricao:text,
    assert_response :success
  end

  test "should get ano:Date," do
    get :ano:Date,
    assert_response :success
  end

end
