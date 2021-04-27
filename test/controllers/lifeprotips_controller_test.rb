require "test_helper"

class LifeprotipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lifeprotip = lifeprotips(:one)
  end

  test "should get index" do
    get lifeprotips_url, as: :json
    assert_response :success
  end

  test "should create lifeprotip" do
    assert_difference('Lifeprotip.count') do
      post lifeprotips_url, params: { lifeprotip: { author: @lifeprotip.author, content: @lifeprotip.content, genre: @lifeprotip.genre, title: @lifeprotip.title } }, as: :json
    end

    assert_response 201
  end

  test "should show lifeprotip" do
    get lifeprotip_url(@lifeprotip), as: :json
    assert_response :success
  end

  test "should update lifeprotip" do
    patch lifeprotip_url(@lifeprotip), params: { lifeprotip: { author: @lifeprotip.author, content: @lifeprotip.content, genre: @lifeprotip.genre, title: @lifeprotip.title } }, as: :json
    assert_response 200
  end

  test "should destroy lifeprotip" do
    assert_difference('Lifeprotip.count', -1) do
      delete lifeprotip_url(@lifeprotip), as: :json
    end

    assert_response 204
  end
end
