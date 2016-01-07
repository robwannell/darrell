require 'test_helper'

class TestamoniesControllerTest < ActionController::TestCase
  setup do
    @testamony = testamonies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testamonies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testamony" do
    assert_difference('Testamony.count') do
      post :create, testamony: { name: @testamony.name, quote: @testamony.quote, title: @testamony.title }
    end

    assert_redirected_to testamony_path(assigns(:testamony))
  end

  test "should show testamony" do
    get :show, id: @testamony
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testamony
    assert_response :success
  end

  test "should update testamony" do
    patch :update, id: @testamony, testamony: { name: @testamony.name, quote: @testamony.quote, title: @testamony.title }
    assert_redirected_to testamony_path(assigns(:testamony))
  end

  test "should destroy testamony" do
    assert_difference('Testamony.count', -1) do
      delete :destroy, id: @testamony
    end

    assert_redirected_to testamonies_path
  end
end
