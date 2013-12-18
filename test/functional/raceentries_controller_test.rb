require 'test_helper'

class RaceentriesControllerTest < ActionController::TestCase
  setup do
    @raceentry = raceentries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:raceentries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create raceentry" do
    assert_difference('Raceentry.count') do
      post :create, raceentry: @raceentry.attributes
    end

    assert_redirected_to raceentry_path(assigns(:raceentry))
  end

  test "should show raceentry" do
    get :show, id: @raceentry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @raceentry
    assert_response :success
  end

  test "should update raceentry" do
    put :update, id: @raceentry, raceentry: @raceentry.attributes
    assert_redirected_to raceentry_path(assigns(:raceentry))
  end

  test "should destroy raceentry" do
    assert_difference('Raceentry.count', -1) do
      delete :destroy, id: @raceentry
    end

    assert_redirected_to raceentries_path
  end
end
