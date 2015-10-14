require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { active: @listing.active, endDateTime: @listing.endDateTime, full_day: @listing.full_day, half_day: @listing.half_day, location_id: @listing.location_id, month: @listing.month, startDateTime: @listing.startDateTime, user_id: @listing.user_id, week: @listing.week }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { active: @listing.active, endDateTime: @listing.endDateTime, full_day: @listing.full_day, half_day: @listing.half_day, location_id: @listing.location_id, month: @listing.month, startDateTime: @listing.startDateTime, user_id: @listing.user_id, week: @listing.week }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
