require "application_system_test_case"

class EntrepreneurshipsTest < ApplicationSystemTestCase
  setup do
    @entrepreneurship = entrepreneurships(:one)
  end

  test "visiting the index" do
    visit entrepreneurships_url
    assert_selector "h1", text: "Entrepreneurships"
  end

  test "creating a Entrepreneurship" do
    visit entrepreneurships_url
    click_on "New Entrepreneurship"

    fill_in "Email", with: @entrepreneurship.email
    fill_in "Last name", with: @entrepreneurship.last_name
    fill_in "Name", with: @entrepreneurship.name
    fill_in "Number", with: @entrepreneurship.number
    fill_in "Password", with: @entrepreneurship.password
    fill_in "Pyme name", with: @entrepreneurship.pyme_name
    fill_in "Street", with: @entrepreneurship.street
    click_on "Create Entrepreneurship"

    assert_text "Entrepreneurship was successfully created"
    click_on "Back"
  end

  test "updating a Entrepreneurship" do
    visit entrepreneurships_url
    click_on "Edit", match: :first

    fill_in "Email", with: @entrepreneurship.email
    fill_in "Last name", with: @entrepreneurship.last_name
    fill_in "Name", with: @entrepreneurship.name
    fill_in "Number", with: @entrepreneurship.number
    fill_in "Password", with: @entrepreneurship.password
    fill_in "Pyme name", with: @entrepreneurship.pyme_name
    fill_in "Street", with: @entrepreneurship.street
    click_on "Update Entrepreneurship"

    assert_text "Entrepreneurship was successfully updated"
    click_on "Back"
  end

  test "destroying a Entrepreneurship" do
    visit entrepreneurships_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Entrepreneurship was successfully destroyed"
  end
end
