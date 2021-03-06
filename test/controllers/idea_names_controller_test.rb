require 'test_helper'

class IdeaNamesControllerTest < ActionController::TestCase
  setup do
    @idea_name = idea_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:idea_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create idea_name" do
    assert_difference('IdeaName.count') do
      post :create, idea_name: { description: @idea_name.description, name: @idea_name.name, picture: @idea_name.picture }
    end

    assert_redirected_to idea_name_path(assigns(:idea_name))
  end

  test "should show idea_name" do
    get :show, id: @idea_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @idea_name
    assert_response :success
  end

  test "should update idea_name" do
    patch :update, id: @idea_name, idea_name: { description: @idea_name.description, name: @idea_name.name, picture: @idea_name.picture }
    assert_redirected_to idea_name_path(assigns(:idea_name))
  end

  test "should destroy idea_name" do
    assert_difference('IdeaName.count', -1) do
      delete :destroy, id: @idea_name
    end

    assert_redirected_to idea_names_path
  end
end
