require "application_system_test_case"

class VoituresTest < ApplicationSystemTestCase
  setup do
    @voiture = voitures(:one)
  end

  test "visiting the index" do
    visit voitures_url
    assert_selector "h1", text: "Voitures"
  end

  test "should create voiture" do
    visit voitures_url
    click_on "New voiture"

    fill_in "Description", with: @voiture.description
    fill_in "Image", with: @voiture.image
    fill_in "Lieu", with: @voiture.lieu
    fill_in "Modele", with: @voiture.modele
    fill_in "Nom", with: @voiture.nom
    click_on "Create Voiture"

    assert_text "Voiture was successfully created"
    click_on "Back"
  end

  test "should update Voiture" do
    visit voiture_url(@voiture)
    click_on "Edit this voiture", match: :first

    fill_in "Description", with: @voiture.description
    fill_in "Image", with: @voiture.image
    fill_in "Lieu", with: @voiture.lieu
    fill_in "Modele", with: @voiture.modele
    fill_in "Nom", with: @voiture.nom
    click_on "Update Voiture"

    assert_text "Voiture was successfully updated"
    click_on "Back"
  end

  test "should destroy Voiture" do
    visit voiture_url(@voiture)
    click_on "Destroy this voiture", match: :first

    assert_text "Voiture was successfully destroyed"
  end
end
