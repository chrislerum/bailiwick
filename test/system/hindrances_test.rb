require "application_system_test_case"

class HindrancesTest < ApplicationSystemTestCase
  setup do
    @hindrance = hindrances(:one)
  end

  test "visiting the index" do
    visit hindrances_url
    assert_selector "h1", text: "Hindrances"
  end

  test "should create hindrance" do
    visit hindrances_url
    click_on "New hindrance"

    fill_in "Name", with: @hindrance.name
    click_on "Create Hindrance"

    assert_text "Hindrance was successfully created"
    click_on "Back"
  end

  test "should update Hindrance" do
    visit hindrance_url(@hindrance)
    click_on "Edit this hindrance", match: :first

    fill_in "Name", with: @hindrance.name
    click_on "Update Hindrance"

    assert_text "Hindrance was successfully updated"
    click_on "Back"
  end

  test "should destroy Hindrance" do
    visit hindrance_url(@hindrance)
    click_on "Destroy this hindrance", match: :first

    assert_text "Hindrance was successfully destroyed"
  end
end
