require 'spec_helper'

describe User do
  
  before(:each) do
    @user = User.new({username: 'user1', email: 'user1@foo.com', password: 'password', password_confirmation: 'password'})
  end
  
  it "should be valid with a username, password, and matching password_confirmation" do
    @user.should be_valid
  end
  
  it "should not be valid without a username" do
    @user.username = nil
    @user.should_not be_valid
  end
  
  it "should not be valid without a password and confirmation" do
    @user.password = nil
    @user.password_confirmation = nil
    @user.should_not be_valid
  end
  
  it "should not be valid without a password and matching confirmation" do
    @user.password_confirmation = 'not_password'
    @user.should_not be_valid
  end
  
  it "should be findable by username" do
    @user.save
    @user2 = User.find(@user.username)
    @user2.should == @user
  end
  
  it "should not allow admin to be mass-assigned" do
    @user.attributes = { admin: true }
    @user.admin.should_not be_true
  end
  
  it "should not allow company_admin to be mass-assigned" do
    @user.attributes = { company_admin: true }
    @user.company_admin.should_not be_true
  end
  
  it "should not allow user_editor to be mass-assigned" do
    @user.attributes = { user_editor: true }
    @user.user_editor.should_not be_true
  end
  
  
end# == Schema Information
#
# Table name: users
#
#  id                        :integer         not null, primary key
#  username                  :string(255)
#  password_digest           :string(255)
#  email                     :string(255)
#  twitter                   :string(255)
#  facebook                  :string(255)
#  gplus                     :string(255)
#  linkedin                  :string(255)
#  skype                     :string(255)
#  remember_me_token         :string(255)
#  password_token            :string(255)
#  password_token_expiration :datetime
#  company_id                :integer
#  flags                     :integer         default(0)
#  created_at                :datetime
#  updated_at                :datetime
#

