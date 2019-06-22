require "application_system_test_case"

class GInfosTest < ApplicationSystemTestCase
  setup do
    @g_info = g_infos(:one)
  end

  test "visiting the index" do
    visit g_infos_url
    assert_selector "h1", text: "G Infos"
  end

  test "creating a G info" do
    visit g_infos_url
    click_on "New G Info"

    fill_in "Age", with: @g_info.age
    fill_in "Name", with: @g_info.name
    fill_in "Sex", with: @g_info.sex
    fill_in "User", with: @g_info.user_id
    click_on "Create G info"

    assert_text "G info was successfully created"
    click_on "Back"
  end

  test "updating a G info" do
    visit g_infos_url
    click_on "Edit", match: :first

    fill_in "Age", with: @g_info.age
    fill_in "Name", with: @g_info.name
    fill_in "Sex", with: @g_info.sex
    fill_in "User", with: @g_info.user_id
    click_on "Update G info"

    assert_text "G info was successfully updated"
    click_on "Back"
  end

  test "destroying a G info" do
    visit g_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "G info was successfully destroyed"
  end
end
