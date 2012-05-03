require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { name: @client.name, notice_me: @client.notice_me, renewal_month10: @client.renewal_month10, renewal_month11: @client.renewal_month11, renewal_month12: @client.renewal_month12, renewal_month1: @client.renewal_month1, renewal_month2: @client.renewal_month2, renewal_month3: @client.renewal_month3, renewal_month4: @client.renewal_month4, renewal_month5: @client.renewal_month5, renewal_month6: @client.renewal_month6, renewal_month7: @client.renewal_month7, renewal_month8: @client.renewal_month8, renewal_month9: @client.renewal_month9, sales_person_id: @client.sales_person_id, usable: @client.usable, user_id: @client.user_id }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { name: @client.name, notice_me: @client.notice_me, renewal_month10: @client.renewal_month10, renewal_month11: @client.renewal_month11, renewal_month12: @client.renewal_month12, renewal_month1: @client.renewal_month1, renewal_month2: @client.renewal_month2, renewal_month3: @client.renewal_month3, renewal_month4: @client.renewal_month4, renewal_month5: @client.renewal_month5, renewal_month6: @client.renewal_month6, renewal_month7: @client.renewal_month7, renewal_month8: @client.renewal_month8, renewal_month9: @client.renewal_month9, sales_person_id: @client.sales_person_id, usable: @client.usable, user_id: @client.user_id }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
