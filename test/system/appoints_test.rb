require "application_system_test_case"

class AppointsTest < ApplicationSystemTestCase
  setup do
    @appoint = appoints(:one)
  end

  test "visiting the index" do
    visit appoints_url
    assert_selector "h1", text: "Appoints"
  end

  test "creating a Appoint" do
    visit appoints_url
    click_on "New Appoint"

    fill_in "Counsellor", with: @appoint.counsellor
    fill_in "Datetime", with: @appoint.datetime
    fill_in "Email", with: @appoint.email
    fill_in "Issue", with: @appoint.issue
    fill_in "Matric", with: @appoint.matric
    fill_in "Name", with: @appoint.name
    fill_in "Phone", with: @appoint.phone
    fill_in "Services", with: @appoint.services
    click_on "Create Appoint"

    assert_text "Appoint was successfully created"
    click_on "Back"
  end

  test "updating a Appoint" do
    visit appoints_url
    click_on "Edit", match: :first

    fill_in "Counsellor", with: @appoint.counsellor
    fill_in "Datetime", with: @appoint.datetime
    fill_in "Email", with: @appoint.email
    fill_in "Issue", with: @appoint.issue
    fill_in "Matric", with: @appoint.matric
    fill_in "Name", with: @appoint.name
    fill_in "Phone", with: @appoint.phone
    fill_in "Services", with: @appoint.services
    click_on "Update Appoint"

    assert_text "Appoint was successfully updated"
    click_on "Back"
  end

  test "destroying a Appoint" do
    visit appoints_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Appoint was successfully destroyed"
  end
end
