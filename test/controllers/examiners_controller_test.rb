require 'test_helper'

class ExaminersControllerTest < ActionController::TestCase
  setup do
    @examiner = examiners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:examiners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create examiner" do
    assert_difference('Examiner.count') do
      post :create, examiner: { clinic_id: @examiner.clinic_id, user_id: @examiner.user_id }
    end

    assert_redirected_to examiner_path(assigns(:examiner))
  end

  test "should show examiner" do
    get :show, id: @examiner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @examiner
    assert_response :success
  end

  test "should update examiner" do
    patch :update, id: @examiner, examiner: { clinic_id: @examiner.clinic_id, user_id: @examiner.user_id }
    assert_redirected_to examiner_path(assigns(:examiner))
  end

  test "should destroy examiner" do
    assert_difference('Examiner.count', -1) do
      delete :destroy, id: @examiner
    end

    assert_redirected_to examiners_path
  end
end
