require 'test_helper'

class JungleBookWolvesControllerTest < ActionController::TestCase
  setup do
    @jungle_book_wolf = jungle_book_wolves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jungle_book_wolves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jungle_book_wolf" do
    assert_difference('JungleBookWolf.count') do
      post :create, jungle_book_wolf: { description: @jungle_book_wolf.description }
    end

    assert_redirected_to jungle_book_wolf_path(assigns(:jungle_book_wolf))
  end

  test "should show jungle_book_wolf" do
    get :show, id: @jungle_book_wolf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jungle_book_wolf
    assert_response :success
  end

  test "should update jungle_book_wolf" do
    patch :update, id: @jungle_book_wolf, jungle_book_wolf: { description: @jungle_book_wolf.description }
    assert_redirected_to jungle_book_wolf_path(assigns(:jungle_book_wolf))
  end

  test "should destroy jungle_book_wolf" do
    assert_difference('JungleBookWolf.count', -1) do
      delete :destroy, id: @jungle_book_wolf
    end

    assert_redirected_to jungle_book_wolves_path
  end
end
