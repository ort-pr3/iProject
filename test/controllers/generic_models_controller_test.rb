require 'test_helper'

class GenericModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @generic_model = generic_models(:one)
  end

  test "should get index" do
    get generic_models_url
    assert_response :success
  end

  test "should get new" do
    get new_generic_model_url
    assert_response :success
  end

  test "should create generic_model" do
    assert_difference('GenericModel.count') do
      post generic_models_url, params: { generic_model: { user_id: @generic_model.user_id } }
    end

    assert_redirected_to generic_model_url(GenericModel.last)
  end

  test "should show generic_model" do
    get generic_model_url(@generic_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_generic_model_url(@generic_model)
    assert_response :success
  end

  test "should update generic_model" do
    patch generic_model_url(@generic_model), params: { generic_model: { user_id: @generic_model.user_id } }
    assert_redirected_to generic_model_url(@generic_model)
  end

  test "should destroy generic_model" do
    assert_difference('GenericModel.count', -1) do
      delete generic_model_url(@generic_model)
    end

    assert_redirected_to generic_models_url
  end
end
