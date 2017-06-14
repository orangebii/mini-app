require 'test_helper'

class ListFavoritesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @list_favorite = list_favorites(:one)
  end

  test "should get index" do
    get list_favorites_url
    assert_response :success
  end

  test "should get new" do
    get new_list_favorite_url
    assert_response :success
  end

  test "should create list_favorite" do
    assert_difference('ListFavorite.count') do
      post list_favorites_url, params: { list_favorite: { id_list_id: @list_favorite.id_list_id, id_user_id: @list_favorite.id_user_id } }
    end

    assert_redirected_to list_favorite_url(ListFavorite.last)
  end

  test "should show list_favorite" do
    get list_favorite_url(@list_favorite)
    assert_response :success
  end

  test "should get edit" do
    get edit_list_favorite_url(@list_favorite)
    assert_response :success
  end

  test "should update list_favorite" do
    patch list_favorite_url(@list_favorite), params: { list_favorite: { id_list_id: @list_favorite.id_list_id, id_user_id: @list_favorite.id_user_id } }
    assert_redirected_to list_favorite_url(@list_favorite)
  end

  test "should destroy list_favorite" do
    assert_difference('ListFavorite.count', -1) do
      delete list_favorite_url(@list_favorite)
    end

    assert_redirected_to list_favorites_url
  end
end
