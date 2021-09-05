require "application_system_test_case"

class FablesTest < ApplicationSystemTestCase
  setup do
    @fable = fables(:one)
  end

  test "visiting the index" do
    visit fables_url
    assert_selector "h1", text: "Fables"
  end

  test "creating a Fable" do
    visit fables_url
    click_on "New Fable"

    fill_in "Email", with: @fable.email
    fill_in "First name", with: @fable.first_name
    fill_in "Last name", with: @fable.last_name
    fill_in "Phone", with: @fable.phone
    fill_in "Twitter", with: @fable.twitter
    click_on "Create Fable"

    assert_text "Fable was successfully created"
    click_on "Back"
  end

  test "updating a Fable" do
    visit fables_url
    click_on "Edit", match: :first

    fill_in "Email", with: @fable.email
    fill_in "First name", with: @fable.first_name
    fill_in "Last name", with: @fable.last_name
    fill_in "Phone", with: @fable.phone
    fill_in "Twitter", with: @fable.twitter
    click_on "Update Fable"

    assert_text "Fable was successfully updated"
    click_on "Back"
  end

  test "destroying a Fable" do
    visit fables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fable was successfully destroyed"
  end
end
