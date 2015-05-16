require 'test_helper'

class KittenzsControllerTest < ActionController::TestCase
  setup do
    @kittenz = kittenzs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kittenzs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kittenz" do
    assert_difference('Kittenz.count') do
      post :create, kittenz: { description: @kittenz.description, name: @kittenz.name, picture: @kittenz.picture }
    end

    assert_redirected_to kittenz_path(assigns(:kittenz))
  end

  test "should show kittenz" do
    get :show, id: @kittenz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kittenz
    assert_response :success
  end

  test "should update kittenz" do
    patch :update, id: @kittenz, kittenz: { description: @kittenz.description, name: @kittenz.name, picture: @kittenz.picture }
    assert_redirected_to kittenz_path(assigns(:kittenz))
  end

  test "should destroy kittenz" do
    assert_difference('Kittenz.count', -1) do
      delete :destroy, id: @kittenz
    end

    assert_redirected_to kittenzs_path
  end
end
