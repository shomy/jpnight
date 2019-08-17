require 'test_helper'

class CreateGInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @create_g_info = create_g_infos(:one)
  end

  test "should get index" do
    get create_g_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_create_g_info_url
    assert_response :success
  end

  test "should create create_g_info" do
    assert_difference('CreateGInfo.count') do
      post create_g_infos_url, params: { create_g_info: { avatar_path: @create_g_info.avatar_path, name: @create_g_info.name } }
    end

    assert_redirected_to create_g_info_url(CreateGInfo.last)
  end

  test "should show create_g_info" do
    get create_g_info_url(@create_g_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_create_g_info_url(@create_g_info)
    assert_response :success
  end

  test "should update create_g_info" do
    patch create_g_info_url(@create_g_info), params: { create_g_info: { avatar_path: @create_g_info.avatar_path, name: @create_g_info.name } }
    assert_redirected_to create_g_info_url(@create_g_info)
  end

  test "should destroy create_g_info" do
    assert_difference('CreateGInfo.count', -1) do
      delete create_g_info_url(@create_g_info)
    end

    assert_redirected_to create_g_infos_url
  end
end
