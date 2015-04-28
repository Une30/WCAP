require 'test_helper'

class DdtquestionsControllerTest < ActionController::TestCase
  setup do
    @ddtquestion = ddtquestions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ddtquestions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ddtquestion" do
    assert_difference('Ddtquestion.count') do
      post :create, ddtquestion: { type: @ddtquestion.type, value1: @ddtquestion.value1, value2: @ddtquestion.value2, value3: @ddtquestion.value3 }
    end

    assert_redirected_to ddtquestion_path(assigns(:ddtquestion))
  end

  test "should show ddtquestion" do
    get :show, id: @ddtquestion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ddtquestion
    assert_response :success
  end

  test "should update ddtquestion" do
    patch :update, id: @ddtquestion, ddtquestion: { type: @ddtquestion.type, value1: @ddtquestion.value1, value2: @ddtquestion.value2, value3: @ddtquestion.value3 }
    assert_redirected_to ddtquestion_path(assigns(:ddtquestion))
  end

  test "should destroy ddtquestion" do
    assert_difference('Ddtquestion.count', -1) do
      delete :destroy, id: @ddtquestion
    end

    assert_redirected_to ddtquestions_path
  end
end
