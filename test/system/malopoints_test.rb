require "application_system_test_case"

class MalopointsTest < ApplicationSystemTestCase
  setup do
    @malopoint = malopoints(:one)
  end

  test "visiting the index" do
    visit malopoints_url
    assert_selector "h1", text: "Malopoints"
  end

  test "should create malopoint" do
    visit malopoints_url
    click_on "New malopoint"

    fill_in "Name", with: @malopoint.name
    fill_in "String", with: @malopoint.string
    click_on "Create Malopoint"

    assert_text "Malopoint was successfully created"
    click_on "Back"
  end

  test "should update Malopoint" do
    visit malopoint_url(@malopoint)
    click_on "Edit this malopoint", match: :first

    fill_in "Name", with: @malopoint.name
    fill_in "String", with: @malopoint.string
    click_on "Update Malopoint"

    assert_text "Malopoint was successfully updated"
    click_on "Back"
  end

  test "should destroy Malopoint" do
    visit malopoint_url(@malopoint)
    click_on "Destroy this malopoint", match: :first

    assert_text "Malopoint was successfully destroyed"
  end
end
