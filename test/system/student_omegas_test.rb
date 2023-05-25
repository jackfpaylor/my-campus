require "application_system_test_case"

class StudentOmegasTest < ApplicationSystemTestCase
  setup do
    @student_omega = student_omegas(:one)
  end

  test "visiting the index" do
    visit student_omegas_url
    assert_selector "h1", text: "Student omegas"
  end

  test "should create student omega" do
    visit student_omegas_url
    click_on "New student omega"

    fill_in "Email", with: @student_omega.email
    fill_in "First name", with: @student_omega.first_name
    fill_in "High school", with: @student_omega.high_school
    fill_in "Highschool activities", with: @student_omega.highschool_activities
    fill_in "Hometown", with: @student_omega.hometown
    fill_in "Instagram", with: @student_omega.instagram
    fill_in "Last name", with: @student_omega.last_name
    fill_in "Phone", with: @student_omega.phone
    fill_in "Snapchat", with: @student_omega.snapchat
    fill_in "Year", with: @student_omega.year
    click_on "Create Student omega"

    assert_text "Student omega was successfully created"
    click_on "Back"
  end

  test "should update Student omega" do
    visit student_omega_url(@student_omega)
    click_on "Edit this student omega", match: :first

    fill_in "Email", with: @student_omega.email
    fill_in "First name", with: @student_omega.first_name
    fill_in "High school", with: @student_omega.high_school
    fill_in "Highschool activities", with: @student_omega.highschool_activities
    fill_in "Hometown", with: @student_omega.hometown
    fill_in "Instagram", with: @student_omega.instagram
    fill_in "Last name", with: @student_omega.last_name
    fill_in "Phone", with: @student_omega.phone
    fill_in "Snapchat", with: @student_omega.snapchat
    fill_in "Year", with: @student_omega.year
    click_on "Update Student omega"

    assert_text "Student omega was successfully updated"
    click_on "Back"
  end

  test "should destroy Student omega" do
    visit student_omega_url(@student_omega)
    click_on "Destroy this student omega", match: :first

    assert_text "Student omega was successfully destroyed"
  end
end
