require "application_system_test_case"

class EmployeesTest < ApplicationSystemTestCase
  setup do
    @employee = employees(:one)
  end

  test "visiting the index" do
    visit employees_url
    assert_selector "h1", text: "Employees"
  end

  test "creating a Employee" do
    visit employees_url
    click_on "New Employee"

    fill_in "Activities", with: @employee.activities
    fill_in "Address", with: @employee.address
    fill_in "Description", with: @employee.description
    fill_in "Img", with: @employee.img
    fill_in "Latitude", with: @employee.latitude
    fill_in "Longitude", with: @employee.longitude
    fill_in "Name Place", with: @employee.name_place
    fill_in "Price Per Day", with: @employee.price_per_day
    fill_in "Rating", with: @employee.rating
    fill_in "Schedule", with: @employee.schedule
    fill_in "Telephone", with: @employee.telephone
    fill_in "Type", with: @employee.type
    fill_in "Website", with: @employee.website
    click_on "Create Employee"

    assert_text "Employee was successfully created"
    click_on "Back"
  end

  test "updating a Employee" do
    visit employees_url
    click_on "Edit", match: :first

    fill_in "Activities", with: @employee.activities
    fill_in "Address", with: @employee.address
    fill_in "Description", with: @employee.description
    fill_in "Img", with: @employee.img
    fill_in "Latitude", with: @employee.latitude
    fill_in "Longitude", with: @employee.longitude
    fill_in "Name Place", with: @employee.name_place
    fill_in "Price Per Day", with: @employee.price_per_day
    fill_in "Rating", with: @employee.rating
    fill_in "Schedule", with: @employee.schedule
    fill_in "Telephone", with: @employee.telephone
    fill_in "Type", with: @employee.type
    fill_in "Website", with: @employee.website
    click_on "Update Employee"

    assert_text "Employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee" do
    visit employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee was successfully destroyed"
  end
end
