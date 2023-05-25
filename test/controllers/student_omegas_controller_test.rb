require "test_helper"

class StudentOmegasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_omega = student_omegas(:one)
  end

  test "should get index" do
    get student_omegas_url
    assert_response :success
  end

  test "should get new" do
    get new_student_omega_url
    assert_response :success
  end

  test "should create student_omega" do
    assert_difference("StudentOmega.count") do
      post student_omegas_url, params: { student_omega: { email: @student_omega.email, first_name: @student_omega.first_name, high_school: @student_omega.high_school, highschool_activities: @student_omega.highschool_activities, hometown: @student_omega.hometown, instagram: @student_omega.instagram, last_name: @student_omega.last_name, phone: @student_omega.phone, snapchat: @student_omega.snapchat, year: @student_omega.year } }
    end

    assert_redirected_to student_omega_url(StudentOmega.last)
  end

  test "should show student_omega" do
    get student_omega_url(@student_omega)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_omega_url(@student_omega)
    assert_response :success
  end

  test "should update student_omega" do
    patch student_omega_url(@student_omega), params: { student_omega: { email: @student_omega.email, first_name: @student_omega.first_name, high_school: @student_omega.high_school, highschool_activities: @student_omega.highschool_activities, hometown: @student_omega.hometown, instagram: @student_omega.instagram, last_name: @student_omega.last_name, phone: @student_omega.phone, snapchat: @student_omega.snapchat, year: @student_omega.year } }
    assert_redirected_to student_omega_url(@student_omega)
  end

  test "should destroy student_omega" do
    assert_difference("StudentOmega.count", -1) do
      delete student_omega_url(@student_omega)
    end

    assert_redirected_to student_omegas_url
  end
end
