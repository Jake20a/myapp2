require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get title:string" do
    get blogs_title:string_url
    assert_response :success
  end

  test "should get body:text" do
    get blogs_body:text_url
    assert_response :success
  end

end
