require "application_system_test_case"

class ShootsTest < ApplicationSystemTestCase
  setup do
    @shoot = shoots(:one)
  end

  test "visiting the index" do
    visit shoots_url
    assert_selector "h1", text: "Shoots"
  end

  test "creating a Shoot" do
    visit shoots_url
    click_on "New Shoot"

    click_on "Create Shoot"

    assert_text "Shoot was successfully created"
    click_on "Back"
  end

  test "updating a Shoot" do
    visit shoots_url
    click_on "Edit", match: :first

    click_on "Update Shoot"

    assert_text "Shoot was successfully updated"
    click_on "Back"
  end

  test "destroying a Shoot" do
    visit shoots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shoot was successfully destroyed"
  end
end
