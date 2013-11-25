require 'test_helper'

class DogsharesControllerTest < ActionController::TestCase
  setup do
    @dogshare = dogshares(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dogshares)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dogshare" do
    assert_difference('Dogshare.count') do
      post :create, dogshare: { available: @dogshare.available, dog_id: @dogshare.dog_id, sitter_id: @dogshare.sitter_id }
    end

    assert_redirected_to dogshare_path(assigns(:dogshare))
  end

  test "should show dogshare" do
    get :show, id: @dogshare
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dogshare
    assert_response :success
  end

  test "should update dogshare" do
    patch :update, id: @dogshare, dogshare: { available: @dogshare.available, dog_id: @dogshare.dog_id, sitter_id: @dogshare.sitter_id }
    assert_redirected_to dogshare_path(assigns(:dogshare))
  end

  test "should destroy dogshare" do
    assert_difference('Dogshare.count', -1) do
      delete :destroy, id: @dogshare
    end

    assert_redirected_to dogshares_path
  end
end
