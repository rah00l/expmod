require 'test_helper'

class ExpensePerticulersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expense_perticulers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense_perticuler" do
    assert_difference('ExpensePerticuler.count') do
      post :create, :expense_perticuler => { }
    end

    assert_redirected_to expense_perticuler_path(assigns(:expense_perticuler))
  end

  test "should show expense_perticuler" do
    get :show, :id => expense_perticulers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => expense_perticulers(:one).to_param
    assert_response :success
  end

  test "should update expense_perticuler" do
    put :update, :id => expense_perticulers(:one).to_param, :expense_perticuler => { }
    assert_redirected_to expense_perticuler_path(assigns(:expense_perticuler))
  end

  test "should destroy expense_perticuler" do
    assert_difference('ExpensePerticuler.count', -1) do
      delete :destroy, :id => expense_perticulers(:one).to_param
    end

    assert_redirected_to expense_perticulers_path
  end
end
