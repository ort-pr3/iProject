require "application_system_test_case"

class GenericModelsTest < ApplicationSystemTestCase
  setup do
    @generic_model = generic_models(:one)
  end

  test "visiting the index" do
    visit generic_models_url
    assert_selector "h1", text: "Generic Models"
  end

  test "creating a Generic model" do
    visit generic_models_url
    click_on "New Generic Model"

    fill_in "User", with: @generic_model.user_id
    click_on "Create Generic model"

    assert_text "Generic model was successfully created"
    click_on "Back"
  end

  test "updating a Generic model" do
    visit generic_models_url
    click_on "Edit", match: :first

    fill_in "User", with: @generic_model.user_id
    click_on "Update Generic model"

    assert_text "Generic model was successfully updated"
    click_on "Back"
  end

  test "destroying a Generic model" do
    visit generic_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Generic model was successfully destroyed"
  end
end
