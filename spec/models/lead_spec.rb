require 'spec_helper'

describe Lead do
  
  before(:each) do
    @lead = Lead.new(name: 'Jim Jones', company: 'Jones Inc', email: 'jim@jonesinc.com', phone: '555-555-1212')
  end
  
  it "should be valid given required attributes" do
    @lead.should be_valid
  end
  
  it "should be invalid when missing a name" do
    @lead.name = nil
    @lead.should_not be_valid
  end
  
  it "should be invalid when missing email or phone" do
    @lead.email = nil
    @lead.phone = nil
    @lead.should_not be_valid
  end 
  
end
