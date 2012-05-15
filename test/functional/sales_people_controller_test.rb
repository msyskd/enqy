require 'test_helper'

class SalesPeopleControllerTest < ActionController::TestCase
  setup do
    @sales_person = sales_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sales_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sales_person" do
    assert_difference('SalesPerson.count') do
      post :create, sales_person: { email: @sales_person.email, first_name: @sales_person.first_name, last_name: @sales_person.last_name, phone1: @sales_person.phone1, phone2: @sales_person.phone2 }
    end

    assert_redirected_to sales_person_path(assigns(:sales_person))
  end

  test "should show sales_person" do
    get :show, id: @sales_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sales_person
    assert_response :success
  end

  test "should update sales_person" do
    put :update, id: @sales_person, sales_person: { email: @sales_person.email, first_name: @sales_person.first_name, last_name: @sales_person.last_name, phone1: @sales_person.phone1, phone2: @sales_person.phone2 }
    assert_redirected_to sales_person_path(assigns(:sales_person))
  end

  test "should destroy sales_person" do
    assert_difference('SalesPerson.count', -1) do
      delete :destroy, id: @sales_person
    end

    assert_redirected_to sales_people_path
  end
end
