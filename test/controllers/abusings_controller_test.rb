require 'test_helper'

class AbusingsControllerTest < ActionController::TestCase
  setup do
    @abusing = abusings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abusings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abusing" do
    assert_difference('Abusing.count') do
      post :create, abusing: { comments: @abusing.comments, drug_id: @abusing.drug_id, first_use: @abusing.first_use, patient_id: @abusing.patient_id, total_use: @abusing.total_use, use_code: @abusing.use_code, using_days: @abusing.using_days }
    end

    assert_redirected_to abusing_path(assigns(:abusing))
  end

  test "should show abusing" do
    get :show, id: @abusing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abusing
    assert_response :success
  end

  test "should update abusing" do
    patch :update, id: @abusing, abusing: { comments: @abusing.comments, drug_id: @abusing.drug_id, first_use: @abusing.first_use, patient_id: @abusing.patient_id, total_use: @abusing.total_use, use_code: @abusing.use_code, using_days: @abusing.using_days }
    assert_redirected_to abusing_path(assigns(:abusing))
  end

  test "should destroy abusing" do
    assert_difference('Abusing.count', -1) do
      delete :destroy, id: @abusing
    end

    assert_redirected_to abusings_path
  end
end
