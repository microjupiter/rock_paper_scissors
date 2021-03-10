require "test_helper"

class GameRoundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_round = game_rounds(:one)
  end

  test "should get index" do
    get game_rounds_url, as: :json
    assert_response :success
  end

  test "should create game_round" do
    assert_difference('GameRound.count') do
      post game_rounds_url, params: { game_round: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show game_round" do
    get game_round_url(@game_round), as: :json
    assert_response :success
  end

  test "should update game_round" do
    patch game_round_url(@game_round), params: { game_round: {  } }, as: :json
    assert_response 200
  end

  test "should destroy game_round" do
    assert_difference('GameRound.count', -1) do
      delete game_round_url(@game_round), as: :json
    end

    assert_response 204
  end
end
