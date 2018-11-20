require 'test_helper'

class TouristicPlacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @touristic_place = touristic_places(:one)
  end

  test "should get index" do
    get touristic_places_url
    assert_response :success
  end

  test "should get new" do
    get new_touristic_place_url
    assert_response :success
  end

  test "should create touristic_place" do
    assert_difference('TouristicPlace.count') do
      post touristic_places_url, params: { touristic_place: { activities: @touristic_place.activities, address: @touristic_place.address, description: @touristic_place.description, img: @touristic_place.img, latitude: @touristic_place.latitude, longitude: @touristic_place.longitude, name_place: @touristic_place.name_place, price_per_day: @touristic_place.price_per_day, rating: @touristic_place.rating, schedule: @touristic_place.schedule, telephone: @touristic_place.telephone, type: @touristic_place.type, website: @touristic_place.website } }
    end

    assert_redirected_to touristic_place_url(TouristicPlace.last)
  end

  test "should show touristic_place" do
    get touristic_place_url(@touristic_place)
    assert_response :success
  end

  test "should get edit" do
    get edit_touristic_place_url(@touristic_place)
    assert_response :success
  end

  test "should update touristic_place" do
    patch touristic_place_url(@touristic_place), params: { touristic_place: { activities: @touristic_place.activities, address: @touristic_place.address, description: @touristic_place.description, img: @touristic_place.img, latitude: @touristic_place.latitude, longitude: @touristic_place.longitude, name_place: @touristic_place.name_place, price_per_day: @touristic_place.price_per_day, rating: @touristic_place.rating, schedule: @touristic_place.schedule, telephone: @touristic_place.telephone, type: @touristic_place.type, website: @touristic_place.website } }
    assert_redirected_to touristic_place_url(@touristic_place)
  end

  test "should destroy touristic_place" do
    assert_difference('TouristicPlace.count', -1) do
      delete touristic_place_url(@touristic_place)
    end

    assert_redirected_to touristic_places_url
  end
end
