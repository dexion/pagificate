require 'spec_helper'

describe 'Managing Pages' do
  
  describe 'Creating' do

    it 'can be created' do
      visit new_page_path
      
      # with invalid data
      click_button 'Save'
      page.should have_content('prohibited this page from being saved')

      # with valid data
      fill_in :title, :with => 'cows'
      click_button 'Save'

      page.should have_no_content('prohibited this page from being saved')
    end

  end
  
  describe 'Listing' do
    
    it 'can be listed' do
      3.times { |n| Factory.create :page, :title => "Page #{ n + 1 }" }

      visit pages_path

      Pagificate::Page.all { |p| page.should have_content(p.title) }
    end
    
  end
  
  describe 'Updating' do
    
    it 'can be updated' do
      page_a = Factory.create(:page, :title => 'Title One')
      
      visit edit_page_path(page_a)
      fill_in :title, :with => 'Title Two'
      click_button 'Save'
      
      page.should have_content('Title Two')
    end
    
  end
  
  describe 'Deleting' do
    
    it 'can be deleted' do
      page_a = Factory.create(:page, :title => 'Delete Me')

      visit pages_path
      click_link 'Delete'
      
      page.should have_no_content('Delete Me')
    end
    
  end
  
end
