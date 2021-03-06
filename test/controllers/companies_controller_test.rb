require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { email: @user.email, name: @user.name, radius: @user.radius, status: @user.status, telephone: @user.telephone } }
    end

    assert_redirected_to company_url(Company.last)
  end

  test "should show company" do
    get company_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@user)
    assert_response :success
  end

  test "should update company" do
    patch company_url(@user), params: { company: { email: @user.email, name: @user.name, radius: @user.radius, status: @user.status, telephone: @user.telephone } }
    assert_redirected_to company_url(@user)
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@user)
    end

    assert_redirected_to companies_url
  end
end
