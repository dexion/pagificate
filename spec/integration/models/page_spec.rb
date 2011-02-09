require 'spec_helper'

describe Pagificate::Page do
  
  it 'should validate presence of title' do
    page = Factory.build :page, :title => nil
    page.should_not be_valid
    
    page.title = 'Test Title'
    page.should be_valid
  end
  
  it "should validate uniqueness of title" do
    page1 = Factory.create :page, :title => 'Test Page'
    page1.should be_valid

    page2 = Factory.build :page, :title => 'Test Page'
    page2.should_not be_valid
  end
  
end