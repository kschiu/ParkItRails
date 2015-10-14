require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { car_type: @location.car_type, city: @location.city, min_to_campus: @location.min_to_campus, num_cars: @location.num_cars, state: @location.state, street_address: @location.street_address, user_id: @location.user_id, zip_code: @location.zip_code }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    patch :update, id: @location, location: { car_type: @location.car_type, city: @location.city, min_to_campus: @location.min_to_campus, num_cars: @location.num_cars, state: @location.state, street_address: @location.street_address, user_id: @location.user_id, zip_code: @location.zip_code }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
