require 'test_helper'

class BobcatsControllerTest < ActionController::TestCase
  setup do
    @bobcat = bobcats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bobcats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bobcat" do
    assert_difference('Bobcat.count') do
      post :create, bobcat: {  }
    end

    assert_redirected_to bobcat_path(assigns(:bobcat))
  end

  test "should show bobcat" do
    get :show, id: @bobcat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bobcat
    assert_response :success
  end

  test "should update bobcat" do
    put :update, id: @bobcat, bobcat: {  }
    assert_redirected_to bobcat_path(assigns(:bobcat))
  end

  test "should destroy bobcat" do
    assert_difference('Bobcat.count', -1) do
      delete :destroy, id: @bobcat
    end

    assert_redirected_to bobcats_path
  end
end
