require 'rails_helper'

test "create a new song" do

  visit artists_url

  get "/songs/new"
  assert_response :success

  post "/songs",
    params: { song: { title: "song1" }}
    assert_response :redirect
    follow_redirect!
    assert_response :success

end
