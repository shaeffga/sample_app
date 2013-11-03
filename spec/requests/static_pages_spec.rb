require 'spec_helper'

describe "Static Pages" do

  describe "Home Page" do

    it "Should have the right title" do
    visit '/'

    expect(page).to have_title'| Home'
    end

    it "should have the content 'Sample App'" do
      visit '/'
      expect(page).to have_content'Sample App'
    end
  end

  describe "Help Page" do

    it "Should have the right title" do
    visit '/help'

    expect(page).to have_title('| Help')
    end 

    it "should have the content 'Help" do
      visit '/help'

      expect(page).to have_content'Help'
    end
  end

  describe "About Us Page" do 

    it "Should have the right title" do
    visit '/about'

    expect(page).to have_title'| About'
    end

    it "Should have the content 'About Us'" do
      visit '/about'

      expect(page).to have_content'About Us'
    end
  end

  describe "Contact Page" do

    it "Should have the right title" do
      visit '/contact'

      expect(page).to have_title'| Contact'
    end

    it "Should have the content 'Contact'" do
      visit '/contact' 

      expect(page).to have_content'Contact'
    end
  end
end
