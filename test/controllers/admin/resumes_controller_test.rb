require 'test_helper'

class Admin::ResumesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_resumes_index_url
    assert_response :success
  end

end
