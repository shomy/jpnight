require 'test_helper'

class GInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @g_info = g_infos(:one)
  end

  test "should get index" do
    get g_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_g_info_url
    assert_response :success
  end

  test "should create g_info" do
    assert_difference('GInfo.count') do
      post g_infos_url, params: { g_info: { age: @g_info.age, name: @g_info.name, sex: @g_info.sex, user_id: @g_info.user_id } }
    end

    assert_redirected_to g_info_url(GInfo.last)
  end

  test "should show g_info" do
    get g_info_url(@g_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_g_info_url(@g_info)
    assert_response :success
  end

  test "should update g_info" do
    patch g_info_url(@g_info), params: { g_info: { age: @g_info.age, name: @g_info.name, sex: @g_info.sex, user_id: @g_info.user_id } }
    assert_redirected_to g_info_url(@g_info)
  end

  test "should destroy g_info" do
    assert_difference('GInfo.count', -1) do
      delete g_info_url(@g_info)
    end

    assert_redirected_to g_infos_url
  end
end
