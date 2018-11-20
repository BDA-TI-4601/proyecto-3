require "application_system_test_case"

class TouristicPlacesTest < ApplicationSystemTestCase
  setup do
    @touristic_place = touristic_places(:one)
  end

  test "visiting the index" do
    visit touristic_places_url
    assert_selector "h1", text: "Touristic Places"
  end

  test "creating a Touristic place" do
    visit touristic_places_url
    click_on "New Touristic Place"

    fill_in "Activities", with: @touristic_place.activities
    fill_in "Address", with: @touristic_place.address
    fill_in "Description", with: @touristic_place.description
    fill_in "Img", with: @touristic_place.img
    fill_in "Latitude", with: @touristic_place.latitude
    fill_in "Longitude", with: @touristic_place.longitude
    fill_in "Name Place", with: @touristic_place.name_place
    fill_in "Price Per Day", with: @touristic_place.price_per_day
    fill_in "Rating", with: @touristic_place.rating
    fill_in "Schedule", with: @touristic_place.schedule
    fill_in "Telephone", with: @touristic_place.telephone
    fill_in "Type", with: @touristic_place.type
    fill_in "Website", with: @touristic_place.website
    click_on "Create Touristic place"

    assert_text "Touristic place was successfully created"
    click_on "Back"
  end

  test "updating a Touristic place" do
    visit touristic_places_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @touristic_place.activities
    fill_in "Address", with: @touristic_place.address
    fill_in "Description", with: @touristic_place.description
    fill_in "Img", with: @touristic_place.img
    fill_in "Latitude", with: @touristic_place.latitude
    fill_in "Longitude", with: @touristic_place.longitude
    fill_in "Name Place", with: @touristic_place.name_place
    fill_in "Price Per Day", with: @touristic_place.price_per_day
    fill_in "Rating", with: @touristic_place.rating
    fill_in "Schedule", with: @touristic_place.schedule
    fill_in "Telephone", with: @touristic_place.telephone
    fill_in "Type", with: @touristic_place.type
    fill_in "Website", with: @touristic_place.website
    click_on "Update Touristic place"

    assert_text "Touristic place was successfully updated"
    click_on "Back"
  end

  test "destroying a Touristic place" do
    visit touristic_places_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Touristic place was successfully destroyed"
  end
end
