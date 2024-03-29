# require 'spec_helper'
# 
# describe "Users" do
#   
#   describe "GET /users" do
#     it "should return a 404" do
#       expect { get users_path }.to raise_error(ActionController::RoutingError)
#     end
#   end
#   
#   describe "POST /users" do
#     it "creates a user" do
#       visit new_user_path
#       fill_in 'Username', with: 'user1'
#       fill_in 'Email', with: 'user1@example.com'
#       fill_in 'Password', with: 'password'
#       fill_in 'Password confirmation', with: 'password'
#       click_button 'Create Account'
#       page.should have_content("Successfully created account.")
#       page.should have_content('user1')
#     end
#   end
#   
#   describe "POST /users" do
#     it "logs the newly created user in" do
#       visit new_user_path
#       fill_in 'Username', with: 'user1'
#       fill_in 'Email', with: 'user1@example.com'
#       fill_in 'Password', with: 'password'
#       fill_in 'Password confirmation', with: 'password'
#       click_button 'Create Account'
#       page.should have_content("user1")
#     end
#   end
#   
#   describe "PUT /users" do
#     it "updates a user" do
#       @user = Factory(:user)
#       visit sign_in_path
#       fill_in "Username", with: @user.user_name
#       fill_in "Password", with: "password"
#       click_button "Sign In"
#       visit edit_user_path @user
#       fill_in 'Email', with: 'update@example.com'
#       click_button 'Update Account'
#       page.should have_content("Successfully updated account.")
#     end
#   end
#   
# end
