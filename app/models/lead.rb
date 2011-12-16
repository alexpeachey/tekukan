class Lead < ActiveRecord::Base
  attr_accessible :name, :company, :email, :phone, :description
  validates_presence_of :name
  validates_presence_of :email, unless: :phone?, message: "can't be blank if phone is also blank."
  validates_presence_of :phone, unless: :email?, message: "can't be blank if email is also blank."
end
