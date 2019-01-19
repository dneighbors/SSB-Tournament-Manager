require "application_system_test_case"

class TournamentsTest < ApplicationSystemTestCase
  setup do
    @tournament = tournaments(:one)
  end

  test "visiting the index" do
    visit tournaments_url
    assert_selector "h1", text: "Tournaments"
  end

  test "creating a Tournament" do
    visit tournaments_url
    click_on "New Tournament"

    fill_in "Active", with: @tournament.active
    fill_in "Descripton", with: @tournament.description
    fill_in "Created at", with: @tournament.created_at
    fill_in "Date", with: @tournament.date
    fill_in "Location", with: @tournament.location
    fill_in "Name", with: @tournament.name
    fill_in "Registration fee", with: @tournament.registration_fee
    fill_in "Total seats", with: @tournament.total_seats
    fill_in "Updated at", with: @tournament.updated_at
    click_on "Create Tournament"

    assert_text "Tournament was successfully created"
    click_on "Back"
  end

  test "updating a Tournament" do
    visit tournaments_url
    click_on "Edit", match: :first

    fill_in "Active", with: @tournament.active
    fill_in "Descripton", with: @tournament.description
    fill_in "Created at", with: @tournament.created_at
    fill_in "Date", with: @tournament.date
    fill_in "Location", with: @tournament.location
    fill_in "Name", with: @tournament.name
    fill_in "Registration fee", with: @tournament.registration_fee
    fill_in "Total seats", with: @tournament.total_seats
    fill_in "Updated at", with: @tournament.updated_at
    click_on "Update Tournament"

    assert_text "Tournament was successfully updated"
    click_on "Back"
  end

  test "destroying a Tournament" do
    visit tournaments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tournament was successfully destroyed"
  end
end
