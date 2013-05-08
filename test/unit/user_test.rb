require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Checkicng for the first_name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:first_name].empty?

  end

   test "Checkicng for the last_name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:last_name].empty?

  end

   test "Checkicng for the profile_name" do 
		user = User.new
		assert !user.save
		assert !user.errors[:profile_name].empty?

  end


   test "profile_format" do 
		user = User.new
		user.profile_name = "Have Spaces in profile name"
		assert !user.save
		assert !user.errors[:profile_name].empty?
		user !user.errors[:profile_name].include?("Must be Correctly Formated")

  end



  #  test "checking for unique value of profile_name" do 
		# user = User.new 
		# user.profile_name =  users(:ariel).profile_name
		# assert !user.save  
		# assert !user.errors[:profile_name].empty?

  # end


end
