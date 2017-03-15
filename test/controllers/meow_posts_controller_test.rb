require 'test_helper'

class MeowPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meow_post = meow_posts(:one)
  end

  test "should get index" do
    get meow_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_meow_post_url
    assert_response :success
  end

  test "should create meow_post" do
    assert_difference('MeowPost.count') do
      post meow_posts_url, params: { meow_post: { content: @meow_post.content, user_id: @meow_post.user_id } }
    end

    assert_redirected_to meow_post_url(MeowPost.last)
  end

  test "should show meow_post" do
    get meow_post_url(@meow_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_meow_post_url(@meow_post)
    assert_response :success
  end

  test "should update meow_post" do
    patch meow_post_url(@meow_post), params: { meow_post: { content: @meow_post.content, user_id: @meow_post.user_id } }
    assert_redirected_to meow_post_url(@meow_post)
  end

  test "should destroy meow_post" do
    assert_difference('MeowPost.count', -1) do
      delete meow_post_url(@meow_post)
    end

    assert_redirected_to meow_posts_url
  end
end
