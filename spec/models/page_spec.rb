require 'spec_helper'

describe Page do

  before(:each) do
    @page = Page.new(title: 'Page 1', content: 'Some test content.')
  end
  
  it "should be valid with a title and content" do
    @page.should be_valid
  end
  
  it "should not be valid without a title" do
    @page.title = nil
    @page.should_not be_valid
  end
  
  it "should not be valid without content" do
    @page.content = nil
    @page.should_not be_valid
  end
  
  it "should be findable by it's slug" do
    @page.save
    @page2 = Page.find('page-1')
    @page2.should == @page
  end
  
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

