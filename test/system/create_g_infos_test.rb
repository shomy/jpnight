require "application_system_test_case"

class CreateGInfosTest < ApplicationSystemTestCase
  setup do
    @create_g_info = create_g_infos(:one)
  end

  test "visiting the index" do
    visit create_g_infos_url
    assert_selector "h1", text: "Create G Infos"
  end

  test "creating a Create g info" do
    visit create_g_infos_url
    click_on "New Create G Info"

    fill_in "Avatar path", with: @create_g_info.avatar_path
    fill_in "Name", with: @create_g_info.name
    click_on "Create Create g info"

    assert_text "Create g info was successfully created"
    click_on "Back"
  end

  test "updating a Create g info" do
    visit create_g_infos_url
    click_on "Edit", match: :first

    fill_in "Avatar path", with: @create_g_info.avatar_path
    fill_in "Name", with: @create_g_info.name
    click_on "Update Create g info"

    assert_text "Create g info was successfully updated"
    click_on "Back"
  end

  test "destroying a Create g info" do
    visit create_g_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Create g info was successfully destroyed"
  end
end
