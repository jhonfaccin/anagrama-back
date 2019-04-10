require 'test_helper'

class AnagramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @anagrama = anagramas(:one)
  end

  test "should get index" do
    get anagramas_url, as: :json
    assert_response :success
  end

  test "should create anagrama" do
    assert_difference('Anagrama.count') do
      post anagramas_url, params: { anagrama: { wordA: @anagrama.wordA, wordB: @anagrama.wordB } }, as: :json
    end

    assert_response 201
  end

  test "should show anagrama" do
    get anagrama_url(@anagrama), as: :json
    assert_response :success
  end

  test "should update anagrama" do
    patch anagrama_url(@anagrama), params: { anagrama: { wordA: @anagrama.wordA, wordB: @anagrama.wordB } }, as: :json
    assert_response 200
  end

  test "should destroy anagrama" do
    assert_difference('Anagrama.count', -1) do
      delete anagrama_url(@anagrama), as: :json
    end

    assert_response 204
  end
end
