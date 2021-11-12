require "application_system_test_case"

class AttributesTest < ApplicationSystemTestCase
  setup do
    @attribute = attributes(:one)
  end

  test "visiting the index" do
    visit attributes_url
    assert_selector "h1", text: "Attributes"
  end

  test "creating a Attribute" do
    visit attributes_url
    click_on "New Attribute"

    fill_in "Description", with: @attribute.description
    fill_in "Name", with: @attribute.name
    check "Objective" if @attribute.objective
    check "Subjective" if @attribute.subjective
    click_on "Create Attribute"

    assert_text "Attribute was successfully created"
    click_on "Back"
  end

  test "updating a Attribute" do
    visit attributes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @attribute.description
    fill_in "Name", with: @attribute.name
    check "Objective" if @attribute.objective
    check "Subjective" if @attribute.subjective
    click_on "Update Attribute"

    assert_text "Attribute was successfully updated"
    click_on "Back"
  end

  test "destroying a Attribute" do
    visit attributes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attribute was successfully destroyed"
  end
end
