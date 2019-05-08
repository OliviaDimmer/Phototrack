require "application_system_test_case"

class ReportersTest < ApplicationSystemTestCase
  setup do
    @reporter = reporters(:one)
  end

  test "visiting the index" do
    visit reporters_url
    assert_selector "h1", text: "Reporters"
  end

  test "creating a Reporter" do
    visit reporters_url
    click_on "New Reporter"

    click_on "Create Reporter"

    assert_text "Reporter was successfully created"
    click_on "Back"
  end

  test "updating a Reporter" do
    visit reporters_url
    click_on "Edit", match: :first

    click_on "Update Reporter"

    assert_text "Reporter was successfully updated"
    click_on "Back"
  end

  test "destroying a Reporter" do
    visit reporters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reporter was successfully destroyed"
  end
end
