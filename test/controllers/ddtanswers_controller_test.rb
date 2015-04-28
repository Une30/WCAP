require 'test_helper'

class DdtanswersControllerTest < ActionController::TestCase
  setup do
    @ddtanswer = ddtanswers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ddtanswers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ddtanswer" do
    assert_difference('Ddtanswer.count') do
      post :create, ddtanswer: { q1: @ddtanswer.q1, q2: @ddtanswer.q2, q3: @ddtanswer.q3 }
    end

    assert_redirected_to ddtanswer_path(assigns(:ddtanswer))
  end

  test "should show ddtanswer" do
    get :show, id: @ddtanswer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ddtanswer
    assert_response :success
  end

  test "should update ddtanswer" do
    patch :update, id: @ddtanswer, ddtanswer: { q1: @ddtanswer.q1, q2: @ddtanswer.q2, q3: @ddtanswer.q3 }
    assert_redirected_to ddtanswer_path(assigns(:ddtanswer))
  end

  test "should destroy ddtanswer" do
    assert_difference('Ddtanswer.count', -1) do
      delete :destroy, id: @ddtanswer
    end

    assert_redirected_to ddtanswers_path
  end
end
