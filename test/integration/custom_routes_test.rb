require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  test "login test for the routes" do
  	get '/login'
  	assert_response :success
  end

  test "logout test for the routes" do
  	get '/logout'
  	assert_response :redirect
  	assert_redirected_to '/'
  end

   test "register test for the routes" do
  	get '/register'
  	assert_response :success
  end

end
