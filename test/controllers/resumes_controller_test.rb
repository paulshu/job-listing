require 'test_helper'

class ResumesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get resumes_show_url
    assert_response :success
  end

  test "should get new" do
    get resumes_new_url
    assert_response :success
  end

end
