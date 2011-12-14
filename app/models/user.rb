class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :username
  attr_accessible :username, :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, on: :create
  validates_presence_of :username
  validates_uniqueness_of :username
  validates_format_of :username, with: /^[-\w]+$/i, message: "limited to letters, numbers, or -"
  
  NoFlags = 0
  
  Admin = 1 << 0 # 1
  def admin
    (self.flags & Admin) != 0
  end
  def admin=(value)
    if value == "1" || value == 1 || value == true
      self.flags |= Admin
    else
      self.flags &= ~Admin
    end
    admin
  end
  def admin?
    admin
  end
  
  CompanyAdmin = 1 << 1 # 2
  def company_admin
    (self.flags & CompanyAdmin) != 0
  end
  def company_admin=(value)
    if value == "1" || value == 1 || value == true
      self.flags |= CompanyAdmin
    else
      self.flags &= ~CompanyAdmin
    end
    company_admin
  end
  def company_admin?
    company_admin
  end
  
  UserEditor = 1 << 2 # 4
  def user_editor
    (self.flags & UserEditor) != 0
  end
  def user_editor=(value)
    if value == "1" || value == 1 || value == true
      self.flags |= UserEditor
    else
      self.flags &= ~UserEditor
    end
    user_editor
  end
  def user_editor?
    user_editor
  end
  
end
# == Schema Information
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

