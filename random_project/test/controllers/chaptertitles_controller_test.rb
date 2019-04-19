require 'test_helper'

class ChaptertitlesControllerTest < ActionController::TestCase
  setup do
    @chaptertitle = chaptertitles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chaptertitles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chaptertitle" do
    assert_difference('Chaptertitle.count') do
      post :create, chaptertitle: { content: @chaptertitle.content }
    end

    assert_redirected_to chaptertitle_path(assigns(:chaptertitle))
  end

  test "should show chaptertitle" do
    get :show, id: @chaptertitle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chaptertitle
    assert_response :success
  end

  test "should update chaptertitle" do
    patch :update, id: @chaptertitle, chaptertitle: { content: @chaptertitle.content }
    assert_redirected_to chaptertitle_path(assigns(:chaptertitle))
  end

  test "should destroy chaptertitle" do
    assert_difference('Chaptertitle.count', -1) do
      delete :destroy, id: @chaptertitle
    end

    assert_redirected_to chaptertitles_path
  end
end
