class Page < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessible :title, :content
  validates_presence_of :title
  validates_presence_of :content 
end
# == Schema Information
#
# Table name: pages
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#

