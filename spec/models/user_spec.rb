# require 'spec_helper'
# 
# describe User do
#   
#   before(:each) do
#     @user = User.new({user_name: 'user1', email: 'user1@foo.com', password: 'password', password_confirmation: 'password'})
#   end
#   
#   it "should be valid with a user_name, password, and matching password_confirmation" do
#     @user.should be_valid
#   end
#   
#   it "should not be valid without a user_name" do
#     @user.user_name = nil
#     @user.should_not be_valid
#   end
#   
#   it "should not be valid without a password and confirmation" do
#     @user.password = nil
#     @user.password_confirmation = nil
#     @user.should_not be_valid
#   end
#   
#   it "should not be valid without a password and matching confirmation" do
#     @user.password_confirmation = 'not_password'
#     @user.should_not be_valid
#   end
#   
# end